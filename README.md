# KERI Community

## Discord

We have a community Discord server and we'd love to see you there!
[https://discord.gg/YEyTH5TfuB](https://discord.gg/YEyTH5TfuB)

### Associated Specifications
The table below lists all deliverables of the KERI Community:

| Acronym | Full Name of Deliverable | Link to Deliverable | Lead Authors | Status / Notes |
|---|---|---|---|---|
| KERI | Key Event Receipt Infrastructure | https://github.com/trustoverip/tswg-keri-specification | Samuel Smith | ToIP Draft |
| ACDC | Authentic Chained Data Containers | https://github.com/trustoverip/tswg-acdc-specification | Samuel Smith | ToIP Draft |
| CESR | Composable Event Streaming Representation | https://github.com/trustoverip/tswg-cesr-specification | Samuel Smith | ToIP Draft |

#### Previous Work

The work at DIF has been archived and any perceived IPR issues resolved.
https://github.com/decentralized-identity/keri

###### IETF drafts

https://weboftrust.github.io/ietf-keri/draft-ssmith-keri.html
https://weboftrust.github.io/ietf-acdc/draft-ssmith-acdc.html
https://weboftrust.github.io/ietf-cesr/draft-ssmith-cesr.html


### Policy
The specfications are governed by the Technical Stack Working Group charter at ToIP

## Meetings

### Implementors call
We meet every Thursday at 10 a.m. EDT (or EST).
The Zoom link is here:
https://us06web.zoom.us/j/81679782107?pwd=cTFxbEtKQVVXSzNGTjNiUG9xVWdSdz09
Meeting ID: 816 7978 2107
Passcode: 379242

### Specification call
We meet every Tuesday at 10  a.m EDT (or EST) as part of the ACDC/KERI Task Force under the Technology Stack Working Group at the Trust over IP Foundation:

Please download and import the following iCalendar (.ics) files to your calendar system.
Weekly: https://us06web.zoom.us/meeting/tZUrcOCvpjkrGtMfRtTcLyp3nxnR2_7XMbgW/ics?icsToken=98tyKuGpqDwjHdyXsRmARpwcBI_CXe3xiHpcjbdwmi3xNyN_exOlOPpMAOBAR-D9

Join Zoom Meeting
https://us06web.zoom.us/j/81679782107?pwd=cTFxbEtKQVVXSzNGTjNiUG9xVWdSdz09

Meeting ID: 816 7978 2107
Passcode: 379242

### Education

Community members have an education/documentation effort in progress here [edu](https://keriworld.slack.com/archives/C03RB6ASVUM)'. The repo for the Web of Trust terminology and glossaries is [here](https://github.com/WebOfTrust/WOT-terms). 

Technical meetings on [KERISSE](kerisse.org) take place twice a week. Drop us a line if you're considering participation by creating an issue [here](https://github.com/WebOfTrust/WOT-terms/issues). 
The repo for the Web of Trust terminology and glossaries is [here](https://github.com/WebOfTrust/WOT-terms). 

## Existing Implementations
The reference implementation for KERI is the keripy (Python) implementation. This is hosted here by the WebOfTrust project. See the below table for where the reference implementation, and others, are located.

| Component               | Name                                                       | Language   | Creators                      | Status                        | Current Version                                                        | Spec Compliance |
| ----------------------- | ---------------------------------------------------------- | ---------- | ----------------------------- | ----------------------------- | ---------------------------------------------------------------------- | --------------- |
| KERI core & CESR        | [keripy](https://github.com/WebOfTrust/keripy)             | Python     | WebOfTrust community          | Release + Active development  | [1.1.17](https://pypi.org/project/keri/1.1.17/)                        | 100%            |
| Agent Infrastructure    | [keria](https://github.com/WebOfTrust/keria)               | Python     | WebOfTrust community          | Release + Active development  | [0.1.3](https://pypi.org/project/keria/0.1.3/)                         | N/A             |
| Edge Agent Library      | [signify-ts](https://github.com/WebOfTrust/signify-ts)     | Typescript | WebOfTrust community          | Release + Active development  | [0.1.0](https://pypi.org/project/signifypy/0.1.0/)                     | N/A             |
| Edge Agent Library      | [signify-py](https://github.com/WebOfTrust/signifypy)      | Python     | WebOfTrust community          | Release + Active development  | [0.2.1](https://www.npmjs.com/package/signify-ts/v/0.2.1)              | N/A             |
| CESR Library            | [cesride](https://github.com/WebOfTrust/cesride)           | Rust       | WebOfTrust community          | Release; inactive             | [0.6.4](https://crates.io/crates/cesride/0.6.4)                        | 90%             |
| Trust Spanning Protocol | [tsp](https://github.com/openwallet-foundation-labs/tsp)   | Rust       | ToIP and OpenWallet community | Prototype                     | N/A                                                                    | ?               |
| KERI core               | [keriox](https://github.com/THCLab/keriox)                 | Rust       | Human Colossus Foundation     | Release + Active development  | [0.11.0](https://crates.io/crates/keri-core/0.11.0)                    | 75%+            |
| CESR Library            | [cesrox](https://github.com/THCLab/cesrox)                 | Rust       | Human Colossus Foundation     | Some development              | [0.1.4](https://crates.io/crates/cesrox/0.1.4)                         | 75%+            |
| CESR                    | [simple-cesr](https://github.com/simple-ssi/simple-cesr)   | Typescript | Future Forge                  | Release + Active development  | [0.2.3](https://www.npmjs.com/package/@simple-ssi/simple-cesr/v/0.2.3) | ?               |
| KERI core               | [kerigo](https://github.com/decentralized-identity/kerigo) | Go         | DIF community members         | Little  development           | No released versions                                                   | ?               |


The keripy implementation is Apache-2.0 licensed as are all repositories in the WebOfTrust project. 

We also encourage the implementation of KERI in other languages. We are happy to host other implementations here
in the WebOfTrust project as long as they are Apache-2.0 licensed.

