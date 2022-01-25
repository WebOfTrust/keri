---
tags: KERI, IETF, Community
---

# KERI Community Meeting Agenda

[![hackmd-github-sync-badge](https://hackmd.io/-soUScAqQEaSw5MJ71899w/badge)](https://hackmd.io/-soUScAqQEaSw5MJ71899w)


Chair: Samuel M. Smith [email](sam@prosapien.com)
Co-Chair: Philip Feairheller [email](pfeairheller@gmail.com)

Meeting Bi-weekly starting on 2021-10-19 at 10 am EDT

Agenda:
https://github.com/WebOfTrust/keri/blob/main/agenda.md

Zoom Meeting:
https://us02web.zoom.us/j/89842900185?pwd=OEpXSU5pa29FR1A3OXFkUithZFNwQT09
Meeting ID: 898 4290 0185
Passcode: 300255

Calendar Invite:
https://us02web.zoom.us/meeting/tZ0lc-uhrjsrEtFmV2aSfAzR015DDL-ld-hg/ics?icsToken=98tyKuGhpj8oE9SVsRGCRpx5Go-ga_PziGJcj7d7kSm3AhNVQxnEZrMXFpZTXdTU

KERI Slack: keriworld.slack.com
https://join.slack.com/t/keriworld/shared_invite/zt-yv0d7jur-iq~lBTXUaAlkYAODfJBQHQ



## Meetings
### 2022-01-25

- Recording:
 
- Terms and understanding - Henk
    1. 'SAD' and 'SAID', for Europeans the difference in pronunciation of SAD and SAID is hard to grasp and reproduce.
    Let alone the differences for native speakers in how they practically apply their tongue on those words.
    And because the difference is highly relevant + SAD is quite different from SAID + still closely related it's recommendable to simplify the understanding in spoken language.
    2. 'Backer' and 'Witness', are these a 100% synonym? And if so: why not use 'backer' and keep repeating now and again that it's about a synomym. If not: what's the exact difference?
- Roadmap:

- Reports from Implementers:


- OOBI
- SKWA (Simple KERI for Web Auth)
- Witness dissemination protocol (how Witnesses promulgate receipts to Validator network) // added by Michal

- Henk: first draft of the [KERI MOOC](https://hackmd.io/nuUu5S8UQjOHXw_a53LvvA) - How to combine the main benefit of autonomic identifier systems, in our case KERI (which imho is 'better prospect for digital freedom in the world', not 'secure attribution') and growth of KERI knowledge, adoption and more programming capacity. For the latter I'd appreciate 5 minutes of your attention after you've glanced through the [draft](https://hackmd.io/nuUu5S8UQjOHXw_a53LvvA). What do think is a good way to develop KERI knowledge, provoke adoption and more programming capacity

- A **rubric-based eval of did:keri** - Daniel Hardman: go to https://w3c.github.io/did-rubric/ and answer all the questions about did:keri. If you want, you can submit your answers as a PR — or you can simply do a writeup that’s published elsewhere.
	Here is an example of a “rubric question” you can answer: https://w3c.github.io/did-rubric/#question-10
	@Daniel : will do, after next week’s KERI meeting


### 2022-01-11
- Recording
    - https://drive.google.com/file/d/10HzfvmpVlru1CecRerF8KULg0vVImJFB/view?usp=sharing
    - 
- Roadmap
    - short term long term
    - CESR version of KERI events
        - UDP version of KERI (2nd Q)
        - Gossip Protocol for KERI Receipt, KeyState, and OOBI dissemination (2nd Q)
    - Recovery from delegated ID prerotated key compromise
    - Presentation and Issuance exchange protocols add Ricardaian Contracts in the `r` section
    - OOBI discovery and validation (Watchers)
    - Registrar Backer support
        - new config trait 
        - new seal type
    - Refreshing Doc strings 
        - Sphinx Support for doc strings
        - Swagger API
        - Test Coverage
    - Watcher Network
    - KERI and DID-Comm and IETF
    - KERI and peer did
    - SWift KERI Library for iOS and Android (LLVM)
    - 
- Reports from Implementers:
    - keripy
        - SADification and SAIDification of attachments
        - First implementation of CESR Proof Signatures, credential parsing moved to Parser
        - Habery with explict multi-Habitat support (multiple prefix IDs per database) - [related issue](https://github.com/WebOfTrust/keripy/issues/46)
        - Keep Repo Mithril and Material UX (https://github.com/WebOfTrust/keep)
    - keriox
        -  query mode done
        -  WIP: `d` in messages (issue 110)
            -  Goldilocks crypto agility, reduce complexity
            -  BowTie model for reasonsing about crypto committments
        -  WIP: working on escrows 
- IETF Internet Draft CESR-Proof
    - practical applications of CESR-Proofs
    - https://github.com/WebOfTrust/ietf-cesr-proof
- Discuss a URN namespace spec for KERI:
    -  it's a good idea to invent a URN specific for KERI. 
    -  Write a spec for it and register with IANA
        -  urn:NID:NSS/path?query#fragment
        -  Examples
            -  urn:aid:alblseejlske/path?query#fragment
            -  urn:keri:slgheilshe/path?query#fragment
- Henk: first draft of the [KERI MOOC](https://hackmd.io/nuUu5S8UQjOHXw_a53LvvA)

- OOBI
- SKWA (Simple KERI for Web Auth)
- Witness dissemination protocol (how Witnesses promulgate receipts to Validator network) // added by Michal



### 2021-12-14
- [recording](https://drive.google.com/file/d/1-jFXFGX0X_Bwgyq42xfT948dBxcZw_sJ/view?usp=sharing)
- Business
    - Meeting cancelled on Dec 28. Next meeting Jan 11th
- Reports from Implementers
    - keripy
        - CESR codes for variable length material.   core.coring.Matter object class now supports variable length codes.
        - encrypted content
        - legacy suites
        - pathing
    - keriox
        - Query messages development
        - Reply messages
        - KSN message
        - TSG 
- Discuss `did:keri` further usage (see Slack #general channel)
    - registrant. Need to update registered version to reference WoT repo not DIF repo
    - did:keri is a very loose wrapper around the KERI prefix, it's there for adoption
    - Maybe it's a good idea to invent a URN specific for KERI

- KERI incubation within IETF: work item under some WG / WG on its own...?
    - KERI presented to Blockchain WG; in the future perhaps hosted within this WG
    - We have to have a draft spec first. Then you form a (work item within a) working group to discuss the spec.
- Michal question: A lightweight protocol for streaming authentic data in  environments with unstable internet connection. Would CESR make sense?
    - Yes, we are able to create a UDP (asynchronous communication) version. It's easier to make UDP reliable than to make TCP scalable.
- GLEIF MultiSig demo KLI (command line version)
    - Two ways of reaching the threshold of a multisig by participant in a rotation event, is by sharing all public addresses among the group of possible signers. If you don't want to disclose pubic keys to other participants, then you could use digests of the public keys in a partial rotation event, where we only need the participating signers to reach the threshold; this subgroups needs to disclose their public keys.
- IETF CESR  variable length codes
    - Pathing for CESR Proofs Attachments SADs
- Partial Rotation 



### 2021-11-30
- Recording 
https://drive.google.com/drive/u/0/folders/1af1qa4cVw6vbuBGvqwa1sz9B2sk70ao-
- Query Msg Discussion
    - https://hackmd.io/Qsrfj7Y-TIGl5ESvrxWGxw
- New issues 
    - (https://github.com/WebOfTrust/keripy/issues/110#issuecomment-982631336)
- IETF CESR Draft   https://datatracker.ietf.org/doc/draft-ssmith-cesr/
- Distributed multi-sig protocol
    - KERI 


    - 

### 2021-11-16
[Recording](https://drive.google.com/drive/folders/1-4XrL8S9WHeSNzaZznSatYH8QkaOqsw4?usp=sharing)
- rpy message
    - d field for said
- exp message
    - d field for said
- qry message
    - d field for said
- All keri key event messages icp  rot dip drt ixn to add d field for said of message. ( https://github.com/WebOfTrust/keripy/issues/110 )
- p field will be said of prior message
- Query Message keriox (michal pietrus)
    - how handling query and reply
- New partial rotation
    https://github.com/WebOfTrust/keripy/issues/118
- Where we chat in realtime
- Issue update readme with status of features


### 2021-11-02

[Recording](https://drive.google.com/drive/folders/13dvg1X5djjezpYriDikxH25UNZ4meyvf?usp=sharing)
- Call-to-order
- Review Licensing Terms and Participation
- progress updates from
    - keripy team
        - ksn query get the current state existing key for identifier query for KEL to update
        - escrow query to get BADA (Best Available Data Logic)
    - HCF team
        - Leverage time stamping authority point in time that you trust
        - DIF update nothing new still trying to figure out what to do working group
        - Sam invite keriox and kerijs to attend this working group
- Witness network
    - clarification of receipts
        - count code #B indexed witness signatures is more compact than #C which is couplets
        - #B is useful if many witnesses
        - Witnesses as highly disposable entities with NonTrans AIDs
            - Listen on two ports TCP and HTTP
                - If TCP then assumes direct mode
                - IF HTTP then assumes indirect mode
            - Witness Hosts also provide a MailBox service with HTTP SSE (server sent events)
                - Controller of witnesses subscribes to SSE stream on Mailbox to read responses to its witness queries
                - Kubernetes pod
                - HTTP API is wrapper of keripy CESR message and unwraps to send to Parser: HTTP requests to Parsable CESR messages
    - delegation issues with witnesses  https://github.com/WebOfTrust/keripy/issues/100
    - 
- New change to ledger registrars as backers
    - https://github.com/WebOfTrust/keripy/issues/90
    - registrar backer allows some to use a ledger registrar backer and ledger oracle instead of a witness pool as the secondary root of trust. Registrar may also provide an oracle or may have multiple oracles not specified.
        - Witness KAACE algorithm provides a distributed consensus agreement.
        - TimeStamp of watchers is authoritative for validator  Judge role


### 2021-10-19

- Call-to-order
- Review Licensing Terms and Participation
    - Apache2, Inbound=Outbound, Developer Certicate of Origin, IETF Submission
- Discuss Progress on IETF draft submissions and IETF process
- keripy update
- Other agenda items
- How to not fork KERI
    - some would like to keep in DIF
    - Options
        - DIF not able to do KERI Spec without KERIpy group
        - Split KERI in pieces and have pieces in DIF
        - Political issues especially with respect to statements about IP.

