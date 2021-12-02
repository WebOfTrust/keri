# Partial Participating Rotation

New event types with fields to allow rotation that need only expose  a threshold set of of the public keys allowing reuse of unexposed public keys.


## Partion Rotation, `ort`, Event

### Revised Syntax Next, `n`, Field
In order to support partial `ort` rotation the next field in the previous establishment event must be changed to a list that includes in order the digest for each of the next public keys and the digest of the next threshold. For example given there are five public keys in the next set of pre-rotated signing keys with the threshold of 3. The next field would be a list with six entries, one for each of the five public key digests and one more for the signing threshold digest such as the following:

```json
"n": 
  [
    "ETNZH3ULvYawyZ-i0d8JZU6JR2nmAoAfSVPzhzS6b5CM", 
    "EYAfSVPzhzaU6JR2nmoTNZH3ULvwyZb6b5CMi0d8JZAS",
    "EnmwyZdi0d8JZAoTNZYAfSVPzhzaU6JR2H3ULvS6b5CM",
    "ETNZH3ULvS6bYAfSVPzhzaU6JR2nmwyZfi0d8JZ5s8bk",                       
    "EJR2nmwyZ2i0dzaU6ULvS6b5CM8JZAoTNZH3YAfSVPzh",
    "EoTNZJR2nmwyZ2i0d6ULvS6b5CM8JZAH3YAfSVPzhzaU",  
  ]
```

This representation of the next field allows the subsequent corresponding rotation to only expose a subset of the next public keys while still enabling validators to securely verify the next forward commitment.



### New Original Threshold Field

The new `ort` rotation adds one field, the `ot` field.
The `ot` field is the original unexposed next threshold from the prior establishment event.

With the additional field a validator is able to verify that both the set of signatures on the rotation event satisfies the original next threshold of signatures that was part of the next digest list committed too by the prior establishment event and that the public keys of that threshold satisficing set of signing public keys were part of the next digest or next digest list committed too by the prior establishment event without revealing the next public keys of those signers that did not participate in the rotation.

Besides providing better fault tolerance to controller availability yet still preserving post-quantum protection, the partial rotation allows unused key pairs from non-participating rotation members to be reused as members of the new next pre-rotation set without exposing the associated public keys. This latter advantage has application to multi-sig thresholds where some of the members are escrow or custodial members where participation in every rotation may be cumbersome. The primary disadvantage of the partial rotation approach is that is is more verbose and consumes more bandwidth. The full rotation is more compact because the next list of digests are XORed together. Any given KEL may switch from back and forth between partial and fully rotation..

The `k` field of a partial, `ort` or `dor` rotation provides the public keys of the participating signers in their same order of appearance in the previous next `n` field digest list. Non participating public keys are skipped. The `ot` field provides the original threshold used to compute the last digest entry in the  previous `n` field digest list.
The `kt` field is the new signing threshold for the subset of public keys in the `k` field list.

The validator verifies the rotation against the original next digest list with the following procedure. 
- the validator ensures the digest of the `ot` field matches the last digest entry in the previous `n` field list. 
- the validator ensures that there is a corresponding entry in order in the previous `n` digest field list for the digest of each of the public keys in the `k` field list. This may be performed by an ordered search. The last entry of the previous `n` field is removed (its the threshold digest, i.e. not a public key digest). 
-  Starting with the digest of the first member of the `k` field and comparing it in turn in order starting with the first member of the previous `n` field list. 
- When a match is found then the search resumes at the next member of each of the `k` and `n` lists until a corresponding match is found. Search resumes by repeating prior step.
- the validator ensures that the attached signatures satisfy the original threshold given by the `ot` field where the signers are taken from the `k` field list of public keys. Attached indexed signature indexes refer to the order of appearance in the. `k` field not the previous `n` field.

To reiterate, the signatures on the the rotation event must meet the original next threshold given by the `ot` field. The new current signing threshold is provided by the `kt` field and the new current public signing keys are provided by the `k` field. The new next digest in the `n` field or `n` field list may or may not include some of all of the digests from the previous `n` field list that do not have corresponding entries in the `k` field list.

This approach allows any threshold satisficing set of signers to rotate to a new current set of signing keys that is a threshold satisficing subset of the previous next threshold without requiring knowledge of all the previous next public signing keys. Those members not represented by the public keys digests in the `k` field may be part of the new next digest or digest list because the underlying public keys were not disclosed by the rotation. This only may be applied when the previous next field, `n` is a list of digests not an XORed combination of the digests.

### Partial Rotation Event

Prior establishment event must use list of next key digests as above.

```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "ort",
  "d" : "E0d8JJR2nmwyYAfZAoTNZH3ULvaU6Z-iSVPzhzS6b5CM",
  "i" : "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
  "s" : "1",
  "p" : "EULvaU6JR2nmwyZ-i0d8JZAoTNZH3YAfSVPzhzS6b5CM",
  "kt": "2",
  "k" :  
    [
      "DnmwyZ-i0H3ULvad8JZAoTNZaU6JR2YAfSVPzh5CMzS6b",
      "DZaU6JR2nmwyZ-VPzhzSslkie8c8TNZaU6J6bVPzhzS6b",
      "Dd8JZAoTNnmwyZ-i0H3U3ZaU6JR2LvYAfSVPzhzS6b5CM"
    ],
  "ot": "3",
  "n" : 
    [
      "ETNZH3ULvYawyZ-i0d8JZU6JR2nmAoAfSVPzhzS6b5CM", 
      "EYAfSVPzhzaU6JR2nmoTNZH3ULvwyZb6b5CMi0d8JZAS",
      "EnmwyZdi0d8JZAoTNZYAfSVPzhzaU6JR2H3ULvS6b5CM",
      "ETNZH3ULvS6bYAfSVPzhzaU6JR2nmwyZfi0d8JZ5s8bk",                       
      "EJR2nmwyZ2i0dzaU6ULvS6b5CM8JZAoTNZH3YAfSVPzh",
      "EoTNZJR2nmwyZ2i0d6ULvS6b5CM8JZAH3YAfSVPzhzaU",  
    ],
  "bt": "1",
  "ba": ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
  "br": ["DH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8TNZJZAo5CM"],
  "a" : []
}
```


## Delegated Partial Rotation Event

Prior establishment event must use list of next key digests as above.

```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "dor",
  "d" : "E0d8JJR2nmwyYAfZAoTNZH3ULvaU6Z-iSVPzhzS6b5CM",
  "i" : "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
  "s" : "1",
  "p" : "EULvaU6JR2nmwyZ-i0d8JZAoTNZH3YAfSVPzhzS6b5CM",
  "kt": "2",
   "k" :  
    [
      "DnmwyZ-i0H3ULvad8JZAoTNZaU6JR2YAfSVPzh5CMzS6b",
      "DZaU6JR2nmwyZ-VPzhzSslkie8c8TNZaU6J6bVPzhzS6b",
      "Dd8JZAoTNnmwyZ-i0H3U3ZaU6JR2LvYAfSVPzhzS6b5CM"
    ],
  "ot": "3",
  "n" : 
    [
      "ETNZH3ULvYawyZ-i0d8JZU6JR2nmAoAfSVPzhzS6b5CM", 
      "EYAfSVPzhzaU6JR2nmoTNZH3ULvwyZb6b5CMi0d8JZAS",
      "EnmwyZdi0d8JZAoTNZYAfSVPzhzaU6JR2H3ULvS6b5CM",
      "ETNZH3ULvS6bYAfSVPzhzaU6JR2nmwyZfi0d8JZ5s8bk",                       
      "EJR2nmwyZ2i0dzaU6ULvS6b5CM8JZAoTNZH3YAfSVPzh",
      "EoTNZJR2nmwyZ2i0d6ULvS6b5CM8JZAH3YAfSVPzhzaU",  
    ],
  "bt": "1",
  "ba":  ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
  "br":  ["DH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8TNZJZAo5CM"],
  "a" :[]
  "di" : "EJJR2nmwyYAZAoTNZH3ULvaU6Z-i0d8fSVPzhzS6b5CM"
}
```