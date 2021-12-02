---
tags: KERI
email: sam@samuelsmith.org
version: 1.01
---



# KERI Message and Seal Formats

[![hackmd-github-sync-badge](https://hackmd.io/XfdKjT3ZQDi1M6Iv3iYhbg/badge)](https://hackmd.io/XfdKjT3ZQDi1M6Iv3iYhbg)


Because adding the `d` field SAID to every key event message type will break all the explicit test vectors. Its no additional pain to normalize the field ordering across all message types and seals.
Originally all messages included an `i` field but that is not true any more. So the changed field ordering is to put the fields that are common to all message types first in order followed by fields that are not common. The common fields are `v`, `t`, `d`.
The newly revised messages and seals are shown below.

## Field Labels

### SAIDs and KERI Label Convention Normalization


Because order of appearance of fields is enforced then where a label appears can add context to help
clarify its meansing.  

`v` for version string when. it appears must be the first field

We have two other identifiers that appear after `v` when `v` is present or may appear first
when `v` is not present. These are `i` and `d`. 

In this context, `i` is short for `ai`, the attributable identifier (controller identifier prefix).
The attributable identifier may also be though of as the the autonomic identifier, the attesting identifier (testator), the authorizing identifier, the author identifier, and the authenticated identifier. A way of thinking about an `i` or `ai` is that it is the identifier of the authoritative entity to which a statement may be securely attributed, thereby making the statement verifiably authentic.


### KERI Defined Element Labels

|Label|Description|Type|Notes|
|---|---|---|---|
|v| Version String| | |
|i| Identifier Prefix|  | |
|s| Sequence Number|  | |
|t| Message Type| | |
|te| Last received Event Message Type in Key State Notice | | |
|d| SAID of Event ||
|p| Prior Event Digest | | |
|kt| Keys Signing Threshold || |
|k| List of Signing Keys (ordered key set)| | |
|n| Next Key Set Commitment |   | |
|bt| Backer Threshold || |
|b| List of Backers  (ordered backer set) | | |
|br| List of Witnesses to Remove (ordered witness set) | | |
|ba| List of Witnesses to Add (ordered witness set) | | |
|c| List of Configuration Traits/Modes |  | |
|a| List of Anchors (seals) || |
|da| Delegator Anchor Seal in Delegated Event (Location Seal) | | Obsolete |
|di| Delegator Identifier Prefix  | | |
|rd| Merkle Tree Root Digest || |
|ee| Last Establishment Event Map | | |
|vn| Version Number ("major.minor")  |  | |

A label may have different values in different contexts but not a different value ***type***.


## Normalized ACDC Labels

`v` is version
`t` is message type
`s` is schema
`d` is said everywhere
`i` is a keri identifier prefix testator id and subject id AID
`a` is attributes data anchors data 
`p` is provenance include prior events and chained events and chained acdc sources




## Event Messages

### Inception Event
When the AID in the `i` field is a self-addressing self-certifying AID, the new Inception Event has two
derived digest fields. In this case both the `d` and `i` fields must have the same value. This means the digest suite's derivation code, used for the `i` field must be the same for the `d` field.
The derivation of the `d` and `i` fields is special. Both the `d` and `i` fields are replaced with dummy `#` characters of the length of the digest to be used. The digest of the Inception event is then computed and both the `d` and `i` fields are replaced with the fully qualified digest value. Validation of an inception event requires examining the `i` field's derivation code and if it is a digest type then the `d` field must be identical otherwise the inception event is invalid.

When the AID is not self-addressing, i.e. the `i` field  derivation code is not a digest. Then the `i` is given its value and the `d` field is replaced with dummy characters `#` of the correct length and then the digest is computed. This is the standard SAID algorithm.


```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "icp",
  "d" : "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
  "i" : "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
  "s" : "0",
  "kt": "1",
  "k" : ["DaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM"],
  "n" : "EZ-i0d8JZAoTNZH3ULvaU6JR2nmwyYAfSVPzhzS6b5CM",
  "bt": "1",
  "b" : ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
  "c" : ["EO"],
  "a" :[]
}
```



### Basic Rotation Event  (also delegating rotation)

```json
{
  "v" : "KERI10JSON00011c_",
  "t" :  "rot",
  "d" :  "E0d8JJR2nmwyYAfZAoTNZH3ULvaU6Z-iSVPzhzS6b5CM",
  "i" :  "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
  "s" : "1",
  "p" : "EULvaU6JR2nmwyZ-i0d8JZAoTNZH3YAfSVPzhzS6b5CM",
  "kt" :  "1",
  "k" :  ["EaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM"],
  "n" :  "EYAfSVPzhzZ-i0d8JZAoTNZH3ULvaU6JR2nmwyS6b5CM",
  "bt":  "1",
  "ba":  ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
  "br":  ["DH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8TNZJZAo5CM"],
  "a" :[]
}
```


### Partial Rotation Event
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
      "Ed8JZAoTNZaU6JR2nmwyZ-i0H3ULvYAfSVPzhzS6b5CM",
      "Ed8JZAoTNZaU6JR2nmwyZ-i0H3ULvYAfSVPzhzS6b5CM",
      "Ed8JZAoTNZaU6JR2nmwyZ-i0H3ULvYAfSVPzhzS6b5CM"
    ],
  "ot": "3",
  "n" : "EYAfSVPzhzZ-i0d8JZAoTNZH3ULvaU6JR2nmwyS6b5CM",
  "bt": "1",
  "ba": ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
  "br": ["DH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8TNZJZAo5CM"],
  "a" : []
}
```


### Interaction Event  (Also delegating Interaction)

```json
{
  "v": "KERI10JSON00011c_",
  "t": "isn",
  "d": "E0d8JJR2nmwyYAfZAoTNZH3ULvaU6Z-iSVPzhzS6b5CM",
  "i": "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
  "s": "2",
  "p": "EULvaU6JR2nmwyZ-i0d8JZAoTNZH3YAfSVPzhzS6b5CM",
  "a":
  [
    {
      "d": "ELvaU6Z-i0d8JJR2nmwyYAZAoTNZH3UfSVPzhzS6b5CM",
      "i": "EJJR2nmwyYAfSVPzhzS6b5CMZAoTNZH3ULvaU6Z-i0d8",
      "s": "1"
    }
  ]
}
```

### Delegated Inception Event

```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "dip",
  "d" : "E0d8JJR2nmwyYAfZAoTNZH3ULvaU6Z-iSVPzhzS6b5CM",
  "i" : "EJJR2nmwyYAfSVPzhzS6b5CMZAoTNZH3ULvaU6Z-i0d8",
  "s" : "0",
  "t" : "dip",
  "kt": "1",
  "k" : ["DaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM"],
  "n" : "EZ-i0d8JZAoTNZH3ULvaU6JR2nmwyYAfSVPzhzS6b5CM",
  "bt": "1",
  "b" : ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
  "c" : ["DND"],
  "a" : [],
  "di": "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM"      
}

```

### Basic Delegated Rotation Event

```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "drt",
  "d" : "E0d8JJR2nmwyYAfZAoTNZH3ULvaU6Z-iSVPzhzS6b5CM",
  "i" : "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
  "s" : "1",
  "p" : "EULvaU6JR2nmwyZ-i0d8JZAoTNZH3YAfSVPzhzS6b5CM",
  "kt": "1",
  "k" : ["EaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM"],
  "n" : "EYAfSVPzhzZ-i0d8JZAoTNZH3ULvaU6JR2nmwyS6b5CM",
  "bt": "1",
  "ba": ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
  "br": ["DH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8TNZJZAo5CM"],
  "a" : []
  "di": "EJJR2nmwyYAZAoTNZH3ULvaU6Z-i0d8fSVPzhzS6b5CM"
}
```



### Delegated Partial Rotation Event

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
      "Ed8JZAoTNZaU6JR2nmwyZ-i0H3ULvYAfSVPzhzS6b5CM",
      "Ed8JZAoTNZaU6JR2nmwyZ-i0H3ULvYAfSVPzhzS6b5CM",
      "Ed8JZAoTNZaU6JR2nmwyZ-i0H3ULvYAfSVPzhzS6b5CM"
    ],
  "ot": "3",
  "n" : "EYAfSVPzhzZ-i0d8JZAoTNZH3ULvaU6JR2nmwyS6b5CM",
  "bt": "1",
  "ba":  ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
  "br":  ["DH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8TNZJZAo5CM"],
  "a" :[]
  "di" : "EJJR2nmwyYAZAoTNZH3ULvaU6Z-i0d8fSVPzhzS6b5CM"
}
```


## Receipts
### Non-Transferable Prefix Signer Receipt
For receipts the `d` field is the SAID of the asssociated event not the receipt message itself.


```json
{
  "v": "KERI10JSON00011c_",
  "t": "rct",
  "d": "DZ-i0d8JZAoTNZH3ULvaU6JR2nmwyYAfSVPzhzS6b5CM",
  "i": "AaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM",
  "s": "1"
}
```

### Transferable Prefix Signer Receipt
For receipts the `d` field is the SAID of the asssociated event not the receipt message itself.

```json
{
  "v": "KERI10JSON00011c_",
  "t": "vrc",
  "d": "DZ-i0d8JZAoTNZH3ULvaU6JR2nmwyYAfSVPzhzS6b5CM",
  "i": "AaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM",
  "s": "1",
  "a":
    {
      "d": "DZ-i0d8JZAoTNZH3ULvaU6JR2nmwyYAfSVPzhzS6b5CM",
      "i": "AYAfSVPzhzS6b5CMaU6JR2nmwyZ-i0d8JZAoTNZH3ULv",
      "s": "4"
    }
}
```

## Seals

### Digest Seal

```json
{
  "d": "Eabcde..."
}
```

### Merkle Tree Root Digest Seal 

```json
{
  "rd": "Eabcde..."
}
```

## Registrar Seal

```json
{
  "d" : "EFGKDDA...",
  "bi": "BACDEFG..."
}

```

### Event Seal
```json
{
  "d": "Eabcde...",
  "i": "Ebietyi....",
  "s": "3"
}
```


## Other Messages

### Query Message

```json
{
  "v" : "KERI10JSON00011c_",  
  "t" : "qry", 
  "d" : "EZ-i0d8JZAoTNZH3ULaU6JR2nmwyvYAfSVPzhzS6b5CM",
  "dt": "2020-08-22T17:50:12.988921+00:00",
  "r" : "logs",
  "rr": "log/processor",
  "q" : 
  {
    "i" : "EaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM",
    "s" : "5",
    "dt": "2020-08-01T12:20:05.123456+00:00",
  }
}
```

```json
{
  "v" : "KERI10JSON00011c_",  
  "t" : "qry", 
  "d" : "EZ-i0d8JZAoTNZH3ULaU6JR2nmwyvYAfSVPzhzS6b5CM",
  "dt": "2020-08-22T17:50:12.988921+00:00",
  "r" : "logs",
  "rr": "log/processor",
  "q" : 
  {
    "d" : "EaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM",
    "i" : "EAoTNZH3ULvYAfSVPzhzS6baU6JR2nmwyZ-i0d8JZ5CM",
    "s" : "5",
    "dt": "2020-08-01T12:20:05.123456+00:00",
  }
}
```

### Reply Message

```json
{
  "v" : "KERI10JSON00011c_",  
  "t" : "rpy",  
  "d" : "EZ-i0d8JZAoTNZH3ULaU6JR2nmwyvYAfSVPzhzS6b5CM",
  "dt": "2020-08-22T17:50:12.988921+00:00",
  "r" : "logs/processor",
  "a" : 
  {
    "i": "EAoTNZH3ULvYAfSVPzhzS6baU6JR2nmwyZ-i0d8JZ5CM",
    "name": "John Jones",
    "role": "Founder",
  }
}
```

```json
{
  "v" : "KERI10JSON00011c_",  
  "t" : "rpy",  
  "d" : "EZ-i0d8JZAoTNZH3ULaU6JR2nmwyvYAfSVPzhzS6b5CM", 
  "dt": "2020-08-22T17:50:12.988921+00:00",
  "r" : "logs/processor",
  "a" : 
  {
    "d":  "EaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM",
    "i": "EAoTNZH3ULvYAfSVPzhzS6baU6JR2nmwyZ-i0d8JZ5CM",
    "name": "John Jones",
    "role": "Founder",
  }
}
```



### Expose Message

```json
{ 
  "v": "KERI10JSON00011c_",
  "t": "exp",
  "d": "EZ-i0d8JZAoTNZH3ULaU6JR2nmwyvYAfSVPzhzS6b5CM",
  "r": "sealed/processor",
  "a":
  {
    "d": "EaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM",
    "i": "EAoTNZH3ULvYAfSVPzhzS6baU6JR2nmwyZ-i0d8JZ5CM",
    "dt": "2020-08-22T17:50:12.988921+00:00",
    "name": "John Jones",
    "role": "Founder",
  }
}
```

### Exchange Message (exchange)

```json
{
  "v": "KERI10JSON00006a_",
  "t": "exn",
  "d": "EF3Dd96ATbbMIZgUBBwuFAWx3_8s5XSt_0jeyCRXq_bM",
  "dt": "2021-11-12T19:11:19.342132+00:00",
  "r": "/echo",
  "rr": "/echo/response",
  "a": {
    "msg": "test"
  }
}
```

## Notices Embedded in Reply Messages

### Key State Notice (KSN)

```json
{
  "v": "KERI10JSON0001d9_",
  "d": "EYk4PigtRsCd5W2so98c8r8aeRHoixJK7ntv9mTrZPmM",
  "i": "E4BsxCYUtUx3d6UkDVIQ9Ke3CLQfqWBfICSmjIzkS1u4",
  "s": "0",
  "p": "",
  "f": "0",
  "dt": "2021-01-01T00:00:00.000000+00:00",
  "et": "icp",
  "kt": "1",
  "k": [
    "DqI2cOZ06RwGNwCovYUWExmdKU983IasmUKMmZflvWdQ"
  ],
  "n": "E7FuL3Z_KBgt_QAwuZi1lUFNC69wvyHSxnMFUsKjZHss",
  "bt": "1",
  "b": [
    "BFUOWBaJz-sB_6b-_u_P9W8hgBQ8Su9mAtN9cY2sVGiY"
  ],
  "c": [],
  "ee": {
    "s": "0",
    "d": "EYk4PigtRsCd5W2so98c8r8aeRHoixJK7ntv9mTrZPmM",
    "br": [],
    "ba": []
  },
  "di": ""
}
```
#### Embedded in Reply

```json
{
  "v" : "KERI10JSON00011c_",  
  "t" : "rpy",  
  "d" : "EZ-i0d8JZAoTNZH3ULaU6JR2nmwyvYAfSVPzhzS6b5CM",
  "dt": "2020-08-22T17:50:12.988921+00:00",
  "r" : "/ksn/BFUOWBaJz-sB_6b-_u_P9W8hgBQ8Su9mAtN9cY2sVGiY",
  "a" : 
    {
      "v": "KERI10JSON0001d9_",
      "d": "EYk4PigtRsCd5W2so98c8r8aeRHoixJK7ntv9mTrZPmM",
      "i": "E4BsxCYUtUx3d6UkDVIQ9Ke3CLQfqWBfICSmjIzkS1u4",
      "s": "0",
      "p": "",
      "f": "0",
      "dt": "2021-01-01T00:00:00.000000+00:00",
      "et": "icp",
      "kt": "1",
      "k": [
        "DqI2cOZ06RwGNwCovYUWExmdKU983IasmUKMmZflvWdQ"
      ],
      "n": "E7FuL3Z_KBgt_QAwuZi1lUFNC69wvyHSxnMFUsKjZHss",
      "bt": "1",
      "b": [
        "BFUOWBaJz-sB_6b-_u_P9W8hgBQ8Su9mAtN9cY2sVGiY"
      ],
      "c": [],
      "ee": {
        "s": "0",
        "d": "EYk4PigtRsCd5W2so98c8r8aeRHoixJK7ntv9mTrZPmM",
        "br": [],
        "ba": []
      },
      "di": ""
    }
}
```

### Transaction State Notice (TSN)

```json
{
  "v": "KERI10JSON0001b0_",
  "d": "EpltHxeKueSR1a7e0_oSAhgO6U7VDnX7x4KqNCwBqbI0",
  "i": "EoN_Ln_JpgqsIys-jDOH8oWdxgWqs7hzkDGeLWHb9vSY",
  "s": "1",
  "ii": "EaKJ0FoLxO1TYmyuprguKO7kJ7Hbn0m0Wuk5aMtSrMtY",
  "dt": "2021-01-01T00:00:00.000000+00:00",
  "et": "vrt",
  "a": {
    "s": 2,
    "d": "Ef12IRHtb_gVo5ClaHHNV90b43adA0f8vRs3jeU-AstY"
  },
  "bt": "1",
  "br": [],
  "ba": [
    "BwFbQvUaS4EirvZVPUav7R_KDHB8AKmSfXNpWnZU_YEU"
  ],
  "b": [
    "BwFbQvUaS4EirvZVPUav7R_KDHB8AKmSfXNpWnZU_YEU"
  ],
  "c": []
}
```
#### Embedded in Reply

```json
{
  "v" : "KERI10JSON00011c_",  
  "t" : "rpy",  
  "d" : "EZ-i0d8JZAoTNZH3ULaU6JR2nmwyvYAfSVPzhzS6b5CM",
  "dt": "2020-08-22T17:50:12.988921+00:00",
  "r" : "/ksn/registry/BwFbQvUaS4EirvZVPUav7R_KDHB8AKmSfXNpWnZU_YEU",
  "a" : 
    {
      "v": "KERI10JSON0001b0_",
      "d": "EpltHxeKueSR1a7e0_oSAhgO6U7VDnX7x4KqNCwBqbI0",
      "i": "EoN_Ln_JpgqsIys-jDOH8oWdxgWqs7hzkDGeLWHb9vSY",
      "s": "1",
      "ii": "EaKJ0FoLxO1TYmyuprguKO7kJ7Hbn0m0Wuk5aMtSrMtY",
      "dt": "2021-01-01T00:00:00.000000+00:00",
      "et": "vrt",
      "a": {
        "s": 2,
        "d": "Ef12IRHtb_gVo5ClaHHNV90b43adA0f8vRs3jeU-AstY"
      },
      "bt": "1",
      "br": [],
      "ba": [
        "BwFbQvUaS4EirvZVPUav7R_KDHB8AKmSfXNpWnZU_YEU"
      ],
      "b": [
        "BwFbQvUaS4EirvZVPUav7R_KDHB8AKmSfXNpWnZU_YEU"
      ],
      "c": []
    }
}
```

## Transaction Event Log Messages

### Registry Inception Event

```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "vcp",
  "d" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "i" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "ii": "EJJR2nmwyYAfSVPzhzS6b5CMZAoTNZH3ULvaU6Z-i0d8",
  "s" : "0",
  "bt": "1",  
  "b" : ["BbIg_3-11d3PYxSInLN-Q9_T2axD6kkXd3XRgbGZTm6s"],
  "c" : ["NB"]
}

```

### Registry Rotation Event

```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "vrt",
  "d" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "i" : "E_D0eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqA7BxL",
  "s" : "2",
  "p" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "bt": "1",  
  "br" : ["BbIg_3-11d3PYxSInLN-Q9_T2axD6kkXd3XRgbGZTm6s"],
  "ba" : []
}
```

### Backerless Credential Issuance

```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "iss",
  "d" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "i" : "E_D0eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqA7BxL",
  "s" : "0",
  "ri" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "dt": "2020-08-01T12:20:05.123456+00:00"  
}
```

### Backerless Credential Revocation

```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "rev",
  "d" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "i" : "E_D0eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqA7BxL",
  "s" : "1",
  "p" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "ri" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "dt": "2020-08-01T12:20:05.123456+00:00"  
}
```

### Backer Credential Issuance

```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "bis",
  "d" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "i" : "E_D0eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqA7BxL",
  "s" : "0",
  "ri" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "ra" : {
      "d": "E8ipype17kJlQfYp3gcF3F1PNKfdX6vpOLXU8YyykB5o",
      "i": "EFvQCx4-O9bb9fGzY7KgbPeUtjtU0M4OBQWsiIk8za24",
      "s": 0
  }
  "dt": "2020-08-01T12:20:05.123456+00:00"  
}
```

### Backer Credential Revocation

```json
{
  "v" : "KERI10JSON00011c_",
  "t" : "brv",
  "d" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "i" : "E_D0eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqA7BxL",
  "s" : "1",
  "p" : "ELh3eYC2W_Su1izlvm0xxw01n3XK8bdV2Zb09IqlXB7A",
  "ri" : "EvxMACzQxU2rDj-X5SPDZYtUn56i4fjjH8yDRFRzaMfI",
  "ra" : {
      "d": "E8ipype17kJlQfYp3gcF3F1PNKfdX6vpOLXU8YyykB5o",
      "i": "EFvQCx4-O9bb9fGzY7KgbPeUtjtU0M4OBQWsiIk8za24",
      "s": 0
  }
  "dt": "2020-08-01T12:20:05.123456+00:00"  
}
```

