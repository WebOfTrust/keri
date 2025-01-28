# KERI Community

## Discord

We have a community Discord server and we'd love to see you there!
[https://discord.gg/YEyTH5TfuB](https://discord.gg/YEyTH5TfuB)

### Associated Specifications
The table below lists all current deliverables of the KERI Community in the Trust over IP (ToIP) organization:

| Acronym | Full Name of Deliverable | Link to Deliverable | Lead Authors | Status / Notes |
|---|---|---|---|---|
| KERI | Key Event Receipt Infrastructure | https://github.com/trustoverip/tswg-keri-specification | Samuel Smith | ToIP Draft |
| ACDC | Authentic Chained Data Containers | https://github.com/trustoverip/tswg-acdc-specification | Samuel Smith | ToIP Draft |
| CESR | Composable Event Streaming Representation | https://github.com/trustoverip/tswg-cesr-specification | Samuel Smith | ToIP Draft |

#### Previous Work

The work at DIF has been archived and any perceived IPR issues resolved.
https://github.com/decentralized-identity/keri

###### IETF draft specifications
For a time the KERI specifications were IETF draft specifications subsequent to the DIF work. The following links reference the IETF draft specifications.

https://weboftrust.github.io/ietf-keri/draft-ssmith-keri.html
https://weboftrust.github.io/ietf-acdc/draft-ssmith-acdc.html
https://weboftrust.github.io/ietf-cesr/draft-ssmith-cesr.html


### Policy
The specifications are governed by the Technical Stack Working Group charter at ToIP.

## Meetings

### Implementors call
We meet alternating Tuesdays (off week for specification call) at 10 a.m. EDT (or EST).
The Zoom link is here:
https://us06web.zoom.us/j/84721071832
Meeting ID: 847 2107 1832

### Specification call
We meet alternating Tuesdays at 10  a.m EDT (or EST) as part of the ACDC/KERI Task Force under the Technology Stack Working Group at the Trust over IP Foundation:

Please download and import the following iCalendar (.ics) files to your calendar system.
Weekly: https://us06web.zoom.us/meeting/tZUrcOCvpjkrGtMfRtTcLyp3nxnR2_7XMbgW/ics?icsToken=98tyKuGpqDwjHdyXsRmARpwcBI_CXe3xiHpcjbdwmi3xNyN_exOlOPpMAOBAR-D9

Join Zoom Meeting
[https://us06web.zoom.us/j/81679782107?pwd=cTFxbEtKQVVXSzNGTjNiUG9xVWdSdz09](https://us06web.zoom.us/j/84721071832)

### Education

Community members have an education/documentation effort in progress here [edu][KERISSE_URL]'. The repo for the Web of Trust terminology and glossaries is [here][WOT_TERMS_REPO]. 

Technical meetings on [KERISSE][KERISSE_URL] take place twice a week. Drop us a line if you're considering participation by creating an issue [here](https://github.com/WebOfTrust/WOT-terms/issues). 
The repo for the Web of Trust terminology and glossaries is [here][WOT_TERMS_REPO]. 

## Existing Implementations
The reference implementation for KERI is the [KERIpy][KERIPY_REPO] (Python) implementation. This is hosted here by the WebOfTrust project. The [KERIpy][KERIPY_REPO] implementation is Apache-2.0 licensed as are all repositories in the WebOfTrust project. 

See the below table for where the reference implementation, and others, are located.

| Component               | Name                         | Language   | License                 | Creators / Maintainers         | Status                        | Recent Version       | Spec Compliance                |
| ----------------------- | -----------------------------| ---------- | ----------------------- |------------------------------- | ----------------------------- | ---------------------| ------------------------------ |
| KERI core & CESR        | [keripy][KERIPY_REPO]        | Python     | [Apache 2.0][APACHE2.0] | WebOfTrust community           | Stable Release, Maintained    | [1.1.17][KERIPY_VS]  | KERI, ACDC, CESR 1.0, 2.0 100% |
| Agent Infrastructure    | [keria][KERIA_REPO]          | Python     | [Apache 2.0][APACHE2.0] | WebOfTrust community           | Early Release, Maintained     | [0.1.3][KERIA_VS]    | N/A - no KERIA spec            |
| Edge Agent Library      | [signify-ts][SIG_TS_REPO]    | Typescript | [Apache 2.0][APACHE2.0] | WebOfTrust community           | Early Release, Maintained     | [0.1.0][SIG_TS_VS]   | N/A - no Signify spec          |
| Edge Agent Library      | [signify-py][SIG_PY_REPO]    | Python     | [Apache 2.0][APACHE2.0] | WebOfTrust community           | Early Release, Maintained     | [0.2.1][SIG_PY_VS]   | N/A - no Signify spec          |
| CESR Library            | [cesride][CESRIDE_REPO]      | Rust       | [Apache 2.0][APACHE2.0] | WebOfTrust community           | Release; inactive             | [0.6.4][CESRIDE_VS]  | CESR 1.0 90%                   |
| Trust Spanning Protocol | [tsp][TSP_REPO]              | Rust       | [Apache 2.0][APACHE2.0] | Wenjing Chu (ToIP), OpenWallet | Prototype                     | N/A                  | ?                              |
| KERI core               | [keriox][KERIOX_REPO]        | Rust       | [EUPL 1.2][EUPL1.2]     | Human Colossus Foundation      | Release + Active development  | [0.11.0][KERIOX_VS]  | KERI, ACDC 1.0 95%+            |
| CESR Library            | [cesrox][CESROX_REPO]        | Rust       | [EUPL 1.2][EUPL1.2]     | Human Colossus Foundation      | Some development              | [0.1.4][CESROX_VS]   | CESR 1.0 100%, CESR 2.0 ?      |
| CESR                    | [simple-cesr][SIM_CESR_REPO] | Typescript | [Apache 2.0][APACHE2.0] | Future Forge                   | Release + Active development  | [0.2.3][SIM_CESR_VS] | CESR 1.0 ?                     |
| KERI core               | [kerigo][KERIGO_REPO]        | Go         | [Apache 2.0][APACHE2.0] | DIF community members          | Little  development           | N/A                  | KERI, ACDC, CESR ?             |

We also encourage the implementation of KERI in other languages. We are happy to host other implementations here
in the WebOfTrust project as long as they are Apache-2.0 licensed.

<!-- Reference links -->

[KERISSE_URL]: https://weboftrust.github.io/kerisse/
[WOT_TERMS_REPO]: https://github.com/WebOfTrust/WOT-terms
[APACHE2.0]: https://www.apache.org/licenses/LICENSE-2.0
[EUPL1.2]: https://github.com/THCLab/licensing?tab=readme-ov-file

[KERIPY_REPO]: https://github.com/WebOfTrust/keripy
[KERIA_REPO]: https://github.com/WebOfTrust/keria
[SIG_TS_REPO]: https://github.com/WebOfTrust/signify-ts
[SIG_PY_REPO]: https://github.com/WebOfTrust/signifypy
[CESRIDE_REPO]: https://github.com/WebOfTrust/cesride
[TSP_REPO]: https://github.com/openwallet-foundation-labs/tsp
[KERIOX_REPO]: https://github.com/THCLab/keriox
[CESROX_REPO]: https://github.com/THCLab/cesrox
[SIM_CESR_REPO]: https://github.com/simple-ssi/simple-cesr
[KERIGO_REPO]: https://github.com/decentralized-identity/kerigo

[KERIPY_VS]: https://pypi.org/project/keri/1.1.17/
[KERIA_VS]: https://pypi.org/project/keria/0.1.3/
[SIG_TS_VS]: https://pypi.org/project/signifypy/0.1.0/
[SIG_PY_VS]: https://www.npmjs.com/package/signify-ts/v/0.2.1
[CESRIDE_VS]: https://crates.io/crates/cesride/0.6.4
[KERIOX_VS]: https://crates.io/crates/keri-core/0.11.0
[CESROX_VS]: https://crates.io/crates/cesrox/0.1.4
[SIM_CESR_VS]: https://www.npmjs.com/package/@simple-ssi/simple-cesr/v/0.2.3
