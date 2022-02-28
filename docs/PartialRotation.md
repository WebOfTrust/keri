---
tags: KERI, Partial Rotation, Ort
email: sam@samuelsmith.org
version: 2.01
---



# Partial Participating Rotation

[![hackmd-github-sync-badge](https://hackmd.io/Tfm63kdnRdmGxcVgrne5Uw/badge)](https://hackmd.io/Tfm63kdnRdmGxcVgrne5Uw)


New event definitions with fields to allow rotation that need only expose  a threshold set of of the public keys allowing reuse of unexposed public keys.


## Partion Rotation

### Revised Syntax Next, `n`, `nt` Field

Two major changes are needed in all establishment events order to support partial  rotation. The first change is a new field, the next threshold, `nt`, field.  The second change is that the next `n` field is no longer a string of XORed digests but is a list of digests that includes in order the digest for each of the next public keys. 

Suppose the next set of of pre-rotated public signing keys has five members with the threshold of 3. The next threshold, `nt`, field would have value `3`. The next, `n` field would be a list with five entries, one for each of the five public key digests such as the following:

```json
"nt": "3",
"n": 
  [
    "ETNZH3ULvYawyZ-i0d8JZU6JR2nmAoAfSVPzhzS6b5CM", 
    "EYAfSVPzhzaU6JR2nmoTNZH3ULvwyZb6b5CMi0d8JZAS",
    "EnmwyZdi0d8JZAoTNZYAfSVPzhzaU6JR2H3ULvS6b5CM",
    "ETNZH3ULvS6bYAfSVPzhzaU6JR2nmwyZfi0d8JZ5s8bk",                       
    "EJR2nmwyZ2i0dzaU6ULvS6b5CM8JZAoTNZH3YAfSVPzh",
  ]
```

These changes allow the subsequent rotation to only expose a subset of the next public keys while still enabling validators to securely verify the next forward commitment.



### Satsifycing Rules for the New Next Threshold, `nt` Field

As described above, each inception and  rotation definition adds one field, the `nt` field.
The `nt` field is next threshold for the next establishment event.

With the additional field a validator is able to verify that both the set of signatures on a given rotation event both satisfies the original next threshold of signatures and public keys of that threshold satisficing set of signing public keys were part of the next next digest list committed too by the prior establishment event without revealing the next public keys of those signers that did not participate in the rotation. 

Besides providing better fault tolerance to controller availability yet still preserving post-quantum protection, the partial rotation allows unused key pairs from non-participating rotation members to be reused as members of the new next pre-rotation set without exposing the associated public keys. This latter advantage has application to multi-sig thresholds where some of the members are escrow or custodial members where participation in every rotation may be cumbersome. The primary disadvantage of the partial rotation approach is that is is more verbose and consumes more bandwidth. However this is outweighed by the simplicity and increased security and fault tolerance of only one format for next threshold and next key digest list declaration. Moreover every rotation can now be a partial rotation since every establishment event provides a list of next thresholds in order. Order preservation is essential for fractionally weighted thresholds which order was not protected explicitly by the establishment events but had to be ensured out-of-band by the multi-sig members. Putting the ordering in-band allows an additional check by each member of a multi-sig group that indeed the digest for their own individual next public key is included in the next digest list in the proper position before signing. A validator also now can fully evaluate the next key state for degree of security vis-a-vis the type of multi-sig both group size and threshold.

The `k` field of a partial rotation provides the public keys of the participating signers in their same order of appearance in the previous next `n` field digest list. Non participating public keys are skipped. The `nt` field from the previous establishment event provides the satisficing threshold needed to accept the new rotation.
The `kt` field is the new signing threshold for the subset of public keys in the `k` field list. Both thresholds, `kt` from the current event and `nt` from the prior establishment event must be satisfied by the signers of any given rotation event.

The validator verifies the rotation against the original next digest list with the following procedure. 
- the validator ensures that there is a corresponding entry in order in the previous `n` digest field list for the digest of each of the public keys in the `k` field list. This may be performed by an ordered search. 
-  Starting with the digest of the first member of the `k` field and comparing it in turn in order starting with the first member of the previous `n` field list. 
- When a match is found then the search resumes at the next member of each of the `k` and `n` lists until a corresponding match is found. Search resumes by repeating prior step.
- the validator ensures that the attached signatures satisfy the original threshold given by the `nt` field of the prior establishment event where the signers are taken from the `k` field list of public keys. Attached indexed signature indexes refer to the order of appearance in the. `k` field not the previous `n` field.

To reiterate, the signatures on the the rotation event must meet the original next threshold given by the `ot` field. The new current signing threshold is provided by the `kt` field and the new current public signing keys are provided by the `k` field. The new next digest in the `n` field or `n` field list may or may not include some of all of the digests from the previous `n` field list that do not have corresponding entries in the `k` field list.

This approach allows any threshold satisficing set of signers to rotate to a new current set of signing keys that is a threshold satisficing subset of the previous next threshold without requiring knowledge of all the previous next public signing keys. Those members not represented by the public keys digests in the `k` field may be part of the new next digest or digest list because the underlying public keys were not disclosed by the rotation. This only may be applied when the previous next field, `n` is a list of digests not an XORed combination of the digests.


### Inception Event
```json
{
  "v": "KERI10JSON0001ac_",
  "t": "icp",
  "d": "EL1L56LyoKrIofnn0oPChS4EyzMHEEk75INJohDS_Bug",
  "i": "EL1L56LyoKrIofnn0oPChS4EyzMHEEk75INJohDS_Bug",
  "s": "0",
  "kt": "2", // 2 of 3
  "k" :  
    [
      "DnmwyZ-i0H3ULvad8JZAoTNZaU6JR2YAfSVPzh5CMzS6b",
      "DZaU6JR2nmwyZ-VPzhzSslkie8c8TNZaU6J6bVPzhzS6b",
      "Dd8JZAoTNnmwyZ-i0H3U3ZaU6JR2LvYAfSVPzhzS6b5CM"
    ],
  "nt": "3",  // 3 of 5
  "n" : 
    [
      "ETNZH3ULvYawyZ-i0d8JZU6JR2nmAoAfSVPzhzS6b5CM", 
      "EYAfSVPzhzaU6JR2nmoTNZH3ULvwyZb6b5CMi0d8JZAS",
      "EnmwyZdi0d8JZAoTNZYAfSVPzhzaU6JR2H3ULvS6b5CM",
      "ETNZH3ULvS6bYAfSVPzhzaU6JR2nmwyZfi0d8JZ5s8bk",                       
      "EJR2nmwyZ2i0dzaU6ULvS6b5CM8JZAoTNZH3YAfSVPzh", 
    ],
  "bt": "2",
  "b": 
    [
      "BGKVzj4ve0VSd8z_AmvhLg4lqcC_9WYX90k03q-R_Ydo",
      "BuyRFMideczFZoapylLIyCjSdhtqVb31wZkRKvPfNqkw",
      "Bgoq68HCmYNUDgOz4Skvlu306o_NY-NrYuKAVhk3Zh9c"
    ],
  "c": [],
  "a": []
}
```


### Rotation Event



```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "rot",
  "d" : "E0d8JJR2nmwyYAfZAoTNZH3ULvaU6Z-iSVPzhzS6b5CM",
  "i" : "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
  "s" : "1",
  "p" : "EULvaU6JR2nmwyZ-i0d8JZAoTNZH3YAfSVPzhzS6b5CM",
  "kt": "2", // 2 of 3
  "k" :  
    [
      "DnmwyZ-i0H3ULvad8JZAoTNZaU6JR2YAfSVPzh5CMzS6b",
      "DZaU6JR2nmwyZ-VPzhzSslkie8c8TNZaU6J6bVPzhzS6b",
      "Dd8JZAoTNnmwyZ-i0H3U3ZaU6JR2LvYAfSVPzhzS6b5CM"
    ],
  "nt": "3",  // 3 of 5
  "n" : 
    [
      "ETNZH3ULvYawyZ-i0d8JZU6JR2nmAoAfSVPzhzS6b5CM", 
      "EYAfSVPzhzaU6JR2nmoTNZH3ULvwyZb6b5CMi0d8JZAS",
      "EnmwyZdi0d8JZAoTNZYAfSVPzhzaU6JR2H3ULvS6b5CM",
      "ETNZH3ULvS6bYAfSVPzhzaU6JR2nmwyZfi0d8JZ5s8bk",                       
      "EJR2nmwyZ2i0dzaU6ULvS6b5CM8JZAoTNZH3YAfSVPzh", 
    ],
  "bt": "1",
  "ba": ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
  "br": ["DH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8TNZJZAo5CM"],
  "a" : []
}
```


## Delegated Rotation Event

Prior establishment event must use list of next key digests as above.

```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "drt",
  "d" : "E0d8JJR2nmwyYAfZAoTNZH3ULvaU6Z-iSVPzhzS6b5CM",
  "i" : "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
  "s" : "1",
  "p" : "EULvaU6JR2nmwyZ-i0d8JZAoTNZH3YAfSVPzhzS6b5CM",
  "kt": "2", // 2 of 3
   "k" :  
    [
      "DnmwyZ-i0H3ULvad8JZAoTNZaU6JR2YAfSVPzh5CMzS6b",
      "DZaU6JR2nmwyZ-VPzhzSslkie8c8TNZaU6J6bVPzhzS6b",
      "Dd8JZAoTNnmwyZ-i0H3U3ZaU6JR2LvYAfSVPzhzS6b5CM"
    ],
  "nt": "3",  // 3 of 5
  "n" : 
    [
      "ETNZH3ULvYawyZ-i0d8JZU6JR2nmAoAfSVPzhzS6b5CM", 
      "EYAfSVPzhzaU6JR2nmoTNZH3ULvwyZb6b5CMi0d8JZAS",
      "EnmwyZdi0d8JZAoTNZYAfSVPzhzaU6JR2H3ULvS6b5CM",
      "ETNZH3ULvS6bYAfSVPzhzaU6JR2nmwyZfi0d8JZ5s8bk",                       
      "EJR2nmwyZ2i0dzaU6ULvS6b5CM8JZAoTNZH3YAfSVPzh", 
    ],
  "bt": "1",
  "ba":  ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
  "br":  ["DH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8TNZJZAo5CM"],
  "a" :[]
  "di" : "EJJR2nmwyYAZAoTNZH3ULvaU6Z-i0d8fSVPzhzS6b5CM"
}
```