---
tags: KERI, IETF, Community
---

# KERI Community Meeting Agenda

[![hackmd-github-sync-badge](https://hackmd.io/-soUScAqQEaSw5MJ71899w/badge)](https://hackmd.io/-soUScAqQEaSw5MJ71899w)


Chair: Samuel M. Smith [email](sam@prosapien.com)
Co-Chair: Philip Feairheller [email](pfeairheller@gmail.com)

Meeting Bi-weekly starting on 2021-10-19 at 10 am EDT

Agenda: https://hackmd.io/-soUScAqQEaSw5MJ71899w (linked from [github](https://github.com/WebOfTrust/keri/blob/main/agenda.md) but edited in HackMD)

Zoom Meeting:
https://us02web.zoom.us/j/89842900185?pwd=OEpXSU5pa29FR1A3OXFkUithZFNwQT09
Meeting ID: 898 4290 0185
Passcode: 300255

Calendar Invite:
https://us02web.zoom.us/meeting/tZ0lc-uhrjsrEtFmV2aSfAzR015DDL-ld-hg/ics?icsToken=98tyKuGhpj8oE9SVsRGCRpx5Go-ga_PziGJcj7d7kSm3AhNVQxnEZrMXFpZTXdTU

KERI Slack: keriworld.slack.com
https://join.slack.com/t/keriworld/shared_invite/zt-14326yxue-p7P~GEmAZ65luGSZvbgFAQ

Explanation of KERI development tools and techniques: [KERI development environment](https://github.com/WebOfTrust/keri/blob/main/docs/keri-dev-env.md)

## Meetings

### Future Topics

- keri-lite options trade-offs
- More discussions for Witnesses and Watchers.  Gossip protocol, UDP, ecosystem configuration.
- Direct Mode Agents
- Custodial Agents
- Demo of how to write tests for KeriPy
- How could we use KERI/ACDC to attest to definitions in the Education material
- Does anything in the Keri/ACDC world replace DNS? If not entirely, does it replace any aspect of DNS
- KERI Lite
    - Sam:  Service endpoint bound to DID, so we can't change the endpoint without changing the DID.

### ToDo
- Future extract Keep library to NPM library
- Cardarno as Ledger Registrar
- github actions for releases
    - including docker containers
- Creating webdriver (or selenium) tests for generic features of Keep.
- Docker Container with port for ReST API
- Split out keripy core from keripy Rest API


## Weekly Agendas

### 2023-07-25
- Recording
    - TBD
    
- Announcements
    - 
    
- Reports
    - KERIpy

    - KERIsse
       
    - KERIA
        
    - SignifyPy
        
    - SignifyTS
        
    - CESRide 
    
- Discussions
    - did:webs developments, collaborations and papers
    - Migration from kli to KERIA via multisig rotation
    - Agents and Mailboxes replacing Witnesses (no, not like that).
    - Move to ToIP meeting schedule and "location" (Zoom)


### 2023-07-11
- Recording
    - TBD
    
- Announcements
    - Change the source of glossary from ToIP back to WebOfTrust.  The source of truth will be WoT, but can be sync'ed back to ToIP.
    - GLEIF successful demo PoC vLEI with regulatory body.     
    - Looking to demo issuance of ACDCs to IIW participants
    
- Reports
    - KERIpy
        - Updating state notifications for key state and transaction state, from KERI events to plain SADs.
        - Added to dev multi-sig rotation kli support  future new member of group push to dev.
        - Main 1.01 no breaking
        
    - KERIsse
        - Adapted KERIsse to have new source of truth.
        - Updated the "How we did it" documentation.
        - Implementing TypeSense search engine, scraping related sites including GitHub repositories.
        - Automation of source material clean-up to remove problematic characters.
        - Adding Levels across individual paragraphs and articles.
        
    - KERIA
        - Changes: addition of advanced searching for credentials in wallet. Help issuers to show issued credentials. create indices using SAD path language with pagaination. Using CESRSuber for indices
        - Several fixes to address bugs in credential issuance and presentation
        
    - SignifyPy
        - Few updates to integration script.
        - issue-ecr.sh shell script
        
    - SignifyTS
        - Working on credential issuance and credential issuance with witnesses
        - Updates to fix challenge response APIs
        - Upcoming: revocation and credential querying API support
        - Fixes to support running from Node
        
    - CESRide
        - Tests against the WASM stuff added earlier this year
        - Aiming to move CESR primitives(sp?) from CESRide into Signify-TS 
    
- Discussions
    - Moving the specifications to ToIP and impact of that on meeting structure
        - In the process of moving the specifications for the protocols in support of ACDCs into ToIP
            - We originally wanted to move everything to ToIP when we left DIF but that was blocked.
            - Code repos will stay at WebOfTrust, just the spec text.
        - For meetings, do we want to continue with this WoT meeting or fold into the ToIP meeting?
            - Suggestion to have a rolling format across meetings based on what the group wants to talk about
            - Membership required to contribute to the meetings - Membership for individuals is free for ToIP
        - The current charter for ACDC in ToIP already includes reference to all the supporting protocols.
            - All specifications would be moved including, KERI, CESR, SAID, PTEL, OOBI, etc.
        - Combining the meetings will make it less confusing for newcombers to only have to join ToIP and find one meeting.
        - Change the focus of the meeting to the KERI/ACDC stack and let the community decide.
        - How should this effect Slack?
            - Keeping KERIWorld or merging everything into ToIP Slack.
            - Argument to keep KERIWorld because that is where source code is coming from and where those discussions should remain because the ToIP charter specifically states that no source code is being delivered
        - Need to be aware of stropiness in the processes of ToIP and user management.
        - Resolution to combine the meetings into the existing ToIP meeting passed.
            - No changes until we get specifications moved, an announcement will be made.
        
    - Question regarding credential search API
        - GET vs POST for search API?  
            - GET is "RESTy" but the parameters are overly expressive and results in long URL
            - POST is not RESTy
            - For now we are putting parameters in BODY of GET.
            - Open for suggestions.

### 2023-06-27
- Recording
    - TBD
- Announcements
    - IEEE P7012 standard effort formalize graduated disclosure for terms and conditions  Doc Searls
        - Machine Readable Privacy Terms "Riccardian Contracts"
    - 
    
        
- Reports
    - KERIpy
        - Continuing port to new Serder object versioning of protocol and packet types
        - 
        
    - KERIA (keri agent)
        -  PoC of Credential Issuance integration with signifypy signifyts
        -  route normalization http resources 
        -  cueing system
        -  google spreadsheet 
        
    - SignifyPY
        - minor updates to align with route normalizion
        
    - SignifyTS
        - some updates to match KERIA start implement credential issuance
       
    - Cesride
        - Implementing selective disclosure with compacting exn 
        - SealsSourceTriples Anchors to another KEL prefix sn said, 
        - 
       
    - KERIsse
     
        KERI Suite Search Engine
        (KERISSE) report:
        1. We* now have shareable links into the search engine pop-up; example: [ixn](https://weboftrust.github.io/WOT-terms/visualisations/?Wot-terms%5Bquery%5D=ixn&searchModalStatus=open)
        2. First repo scraped and indexed: Weboftrust-keripy. You can filter on repos in the left menu.

           We have new [responses](https://github.com/WebOfTrust/WOT-terms/discussions/30) to what KERISSE should mean to the community, thanks to our respondents! 

            '* When I say “we” it’s Kor Dwarshuis and myself our small team has two technical meetings a week.
    - Provenant
        - streamlining vLEI issuance using Keria and Signify


        
        
- Discussion
    - (Jason) Anchoring EXN messages to the KEL, is it needed for verifiability?
        - Sam: No, since credentials are already anchored to the KEL then you can send signatures of the ACDCs and then sign the EXN message and send those signatures with EXN messages for verifiability.
    - Duplicity Recovery
        - Does it break non-repudiation (no)
            - No, it doesn't break non-repudiation. The legal person or entity controlling a KERI identifier is responsible for any events that go into a KEL, including duplicitous events.
            - The policy is to not trust an identifier that is duplicitous.
            - Once the duplicitous identifiers enables full reconciliation of all events in the KELs, inculding duplicitous KELs, by acknowledging disputed events in rotation recovery events, then it can be trusted again. This sort of a trust decision is ecosystem-specific, business-case specific.
        - Specify in the EGF (Ecosystem Governance Framework) all of your event types and recovery from duplicity for each event.
    - SAD SAID concept for opaque data
        - [Daniel Hardman Presentation Link](https://docs.google.com/document/d/1PDFUmmeAzC_PoFISbZzbB7UT0LPcmVQFBWo8bwzA97U/edit?pli=1#heading=h.o1dvjnn6h4xi)
    - Replay Attack non-interactive
        - Did not get to this on today's call, postponed to next meeting.
    
            


### 2023-06-13
- Recording
    - https://drive.google.com/file/d/1oJ1aXV8q79GCp2dALWjBVDUtbmAClvsr/view?usp=drive_link
- Announcements
    - DICE - IIW Europe.
        - Last week, 160 attendees.  Same format as IIW
        - Topics:
            - OpenID4VC topics
                - Not a replacement for identify, it would replace DIDComm
                - Using OpenID tooling to secure the issuance and presentation exchange.
            - What is going to happen with Indy
            - Michal did: The "Sam Smith" tech stack
                - Trying to share the technology and stress the growth of the community
            - HCF also did a showcase of their existing tech stack - providing SSH access using KERI/ACDC
            - Henk's work with KERISSE is important
            - Rumors being spread that Sam is the single point of failure for KERI/ACDC
            - Specification:  
                - What is the status of the spec?
                    - Actively working to move spec to ToIP.  Attempted to do this when we left DIF, but was blocked by DIF
                    - But now all KERI work has been archived on DIF, we will get this done.
                    - Includes:  ACDC, KERI, CESR, SAIDs, etc. (10 in total).
    
        
    
- Reports
    - KERIpy
        - Sam: Updating protocol for Serder
            - Allows for versioning of KERI and ACDC protocols.
            - Converting KSN from KERI events to an object class (no version, no packet type).  Can only embed KSNs in KERI events now.
            - Leading up to new superceding delegation rotation event.
        - Phil: planning to add support for joining MS group in a rotation not at inception.
       
    - KERIA (keri agent)
        - Work on adding support for credential issuance verificationa and managment
        - Regsitry creation API added
            - Long running operation support needed
        
    - SignifyPY
        - Script for issuing a credential to an AID hosted in KERIA
        - Support for list and 
        
    - SignifyTS
        - Added OOBIs, keystate, delegation, credential lists
        - Working on multisig now
       
    - Cesride
        - No updates
       
    - KERIsse
        - Scrapped blogs of community, indexed.
        - Discussion:
            - Kor and I would like to know whether devs would appreciate the compact version of the Search Engine part of KERISSE here https://dwarshuis.com/test/wot-terms/view/docs/Visualisations/Kent%20Bull%20viz/ or the more spacious version of the layout in production here: https://weboftrust.github.io/WOT-terms/
        
    - Provenant
        - No updates
        
        
- Discussion
    - GLEIF EGF Documents:
        - https://www.gleif.org/en/vlei/introducing-the-vlei-ecosystem-governance-framework
    - Creating AIDs from file hashes
        - An AID where the inception event includes file hashes in anchors.
        - Used to secure data.  Asserting control over the AID and the data in the files that were hashed.
        - Used to assert to the parameters of an LLM
            - Source of provenance of your use of it, not of ownership over it.
        - Attach SAIDs to any data coming out of it.
        - Optimized compact sparse merkle tree (OCSMT)
            - all operations are logn
        
    - DID Methods, did:keri, did:webs
        - A proposal to create a new DID Method specification called did:webs that is did:web like secured by did:webs
        - What is the relationship between a did:webs and did:keri DID?
            - Are they subsets of each other?
        - Discussion at last KERI Dev call:
            - https://github.com/WebOfTrust/keri/discussions/31
            


### 2023-05-30
- Recording
    - https://drive.google.com/file/d/1-y-57ynny4xtpHdyxbsmHJJQVZrBnQjr/view?usp=drive_link
- Announcements
    - New Dev Meeting, every Thursday at 10:00am ET / 8:00am MT / 7:00am PT
        - KERI Dev channel in Slack
        - https://us02web.zoom.us/j/89842900185?pwd=OEpXSU5pa29FR1A3OXFkUithZFNwQT09
    - QuiIdentity went live with a closed beta last week
    - KERIsse
        - KERISSE development : https://github.com/WebOfTrust/WOT-terms/discussions/30 Report of current responses
    
- Reports
    - KERIpy
        - Sam: continued work on refactor of event protocol messages and ACDC protocol messages.
            - Table based configuration of fields for messages
        - Phil PR against Main branch. for revoke.
    - KERIA (keri agent)
        - continuing moving functionality
        - Imp passcode rotation in both KERIa and Signifypy and SignifyTS
        - response headers signing
        - Sandy algorithm new hybrid of Salty and Randy key algorithms
        - KERIA test agent running on AWS
            - https://keria-dev.rootsid.cloud
    - SignifyPY
        - try for interop between clients SignifyPy and SignifyTS
        - integration tests script support
    - SignifyTS
        - Salty and Randy Group ID key management
        - Passcode rotation
        - Trying to maintin parity with SignifyPY
        - Integration tests
    - Cesride
        - move some modules stuff
        - Salty and Randy for rust
        - Encrypter and Decrypter
        - Signature header http in rust
    - KERIsse
        - ongoing discussion about the focal functionality to provide. [Current responses](https://weboftrust.github.io/WOT-terms/docs/intro?level=3) can be reviewed before contributing in 1-on-1 Zoom interviews. KERISSE can be tested [here](https://weboftrust.github.io/WOT-terms/docs/intro?level=3).
    - Provenant
        - Issues
        
- Discussion
    - Status Update on Watcher and Revocation
        - Working through technical debt to get to implementation of Watcher.
        - Watcher is basically a witness that is not declared in a KEL
    - Roadmap for Watcher Implementation:
        - In KERIA agent and KERIpy kli, all querying for KEL should go through a Watcher if one is configured
        - Q3 implementation of Watcher
    - Credential revocation
        - Credential chaining revocation does not automatically revoke "downstream" credentials but makes them no longer valid
        - When is a credential revoked?
            - Based on the timestamp on the revocation event message in the TEL
            - How to handle the situation where a malicious issuer posts a revocation event with a prior date?
            - The grace period for downstream vLEI credentials is based on the revocation of QVIs

### 2023-05-16
- Recording
    - https://drive.google.com/file/d/1idSUoWZpwwVvH5QESNMC9H58vsX0HQ1D/view?usp=drive_link
- Reports
    - KERIpy
        - New version of Serder, work in progress.  Target to integrate this week
            - Support auto-verification of SAID
            - Table based configuration for any packet type/event type
            - Serdery Factory to parse out the event types
        - Secp256(r/k)1 PR merged in this week.
    - CESR
        - Added Creder recently
        - Wrapped up the CESR calls, implementation at a 1.0 state
        - Should do a 1.0 release
    - Education
        - Argolia free version not customizable enough
        - Switched from Argolia to TypeSense (sp?)
            - https://typesense.org/
        - Looking for anyone who has experience.
    - Signify
        - SignifyPy Passcode rotation with new key generation mechanism Sandy algo
        - Interaction with Keria Agent
        - Have signify-ts running in a browser client
            - Boot calls being built now
        - Signify HSM Integration Module (SHIM) built using Trezor device 
            - https://github.com/roots-id/trezor-shim
            - Demo in repo using SignifyPy
        - SHIM build using Google Cloud KSM
        - Keride Repo has cesride stuff
    - KERIA
        - multisig group demo planned for July
            - https://github.com/WebOfTrust/keria/discussions/32
    - Schema Registy in WoT
        - Daniel pushed several new updates to schema registry
            - A JSON file with links to available schema
        - GitHub deployment to GitHub pages could be used.
        
- Announcements
- Discussion
    - ACDC Graph - Different schema at each "layer", where to encode Root of Trust AID
        - Defined production root of trust AID for ecosystem, should/could this be hardcoded into the Schema
            - Could be a good idea because it removes extra "business logic" to verify the SAID outside the Schema
            - Could be bad because a loss of Root causes versioning of schema
            - Could be bad because it prevents reuse of Schema in multiple environments (dev/prod/etc).
            - Probably not one answer for all ecosystems.
            - Community would love feedback over time to see how this works.  Pros / cons.
    - ACDC Schema defined to ONLY allow SAID of Rules section, not expanded Rules section.
        - Is this legal, a good idea?
            - Yes, this is a fine approach.
        - Good to add as a discussion item for next week's ACDC call
        - Changes to allow packet types for all composite pieces of an ACDC credential
            - Adds performant streaming and caching for all parts of an ACDC
    
    - Schema registry
        - Relative vs Absolute URLs.
            - Sam proposing to use relative URLs to avoid name (SAID) squatting
            - Attempting to ensure we have a permissionless registry
            - Daniel to do a PR to update to relative URLs
            - Kevin and Phil to coordinate on CI/CD to deploy to GitHub pages and validate SAID
        - Open PR for IRL (now, Face-2-Face) credential registry type, please provide feedback
            - https://github.com/WebOfTrust/schema/pull/3
            
    - KERI Dev Call
        - Thursday's call combined and repurposed to be Development calls.
            - No theory, all implementation!
            - Pigs and Chickens stuff
            
    - Review Signify Protocol Discussion
        - https://github.com/WebOfTrust/keria/discussions/34

### 2023-05-02
- Recording
    https://drive.google.com/file/d/1-7tXOHswCS-5_Nsm2kF9ZhagWeTt2eUz/view?usp=sharing
- Reports
    - KERIpy
        - No significant updates
        - Sam is refactoring event injestion to verify SAID as early as possible
        
    - CESR
        - last version pushed was 0.5
        - Creder added by Jason, working on integration with Parside
        - Discussions ongoing about the relationship between CERSide, Parside, Signifide, etc and how to merge/share them
        
    - Education
        - Proposal to re-evaluate the need for bi-weekly meetings for EDU.  Perhaps pause them for the time being.
        - Could consider moving the meeting to other time slot
        - Pausing meeting starting this week, will reevaluate
        
    - Signify
        - Jupyter notebook pushed with Randy key integration test and documentation in notebook
            - https://github.com/WebOfTrust/signifypy/blob/main/integration/app/test_randy.ipynb
        - SHIM - Signify HSM Integration Module, first implemetation using GCP KSM
                
    - KERIA
        - Added test coverage, dockerfile, CI, etc.
        
- Announcements
    - See last week's ACDC meeting recording for updates on IIW KERI/ACDC
        - https://wiki.trustoverip.org/display/HOME/ACDC+Meeting+Page (meeting notes here, video link tdb)

    - Session at IIW about IPR at KERI.  
        - Outcome is that DIF tombstoned all repos and landing page for KERI
        - DIF published the result of the call for patent disclosures and that there was a clean handoff to WebOfTrust
        - Recognition that we are a BDFL.
        - Intent is to move standards goverance to IETF or other standards bodies.

    - Meeting about did:keri (last week)
        - suggested set up biweekly meeting
        - https://keriworld.slack.com/files/U035R1TFEET/F055E0EKNSZ/2023-01-27-did-keri-did-method-resolver.pdf

- Discussion
    - IRL Credentials
        - "In Real Live" credentials.  Leveraging ACDC chaining to attest to "knowing" someone.
        - A credential to prove that someone is not an AI, not an IoT, not software and not an Org
        - Some members in the community have vLEIs and have gone through NIST IAL2 authentication already
        - Credential certifies three things:
            - Assertion that an in person interaction for some period of time  with first/last name
            - Some form of OOB interaction occurred subsequently (like an email)
            - Proposed schema (see presentation).
        - A form of reputation by reference.
        - Proposal to be able to issue these credentials at the next IIW.
        - Daniel to publish a PR of potential schema to the schema repo in WebOfTrust
        - Badge for IRL credentials?
        
    - mDL "identifiers"?
        - Issued to a "number"?  The number of the physical driver's license.
        - IAL proofs during the issuance of the mDL.
        - Bound to the device or to the biometric.
        - Suggestion to ask the question on ToIP Slack.  Lots of experience over there.

    - Breakdown of Rust repositories (Kevin)
        - keride repo with "Features".
            - method of selectively consuming on the portions of a library you want
        - trying to answer questions like "Where does Serder go?"
        


### 2023-04-04
- Recording
    https://drive.google.com/file/d/1akJzrYiGKvdvNb0oYGCBh4hJwMvV1BXN/view?usp=sharing
- Reports
    - KERIpy
        - 1.0.0 pushed tp PyPi keri

    - CESR
        - Closed issues in last meeting
        - CESRide code run against tests in KERIpy (test_coring)
        - Whiteboarding session planned for IIW
        - Making decisions on where classes / structs belong (CESRide, Parside, Signifide)
    - Education
        - Update to ToIP glossary.  Split definitions by higher level concepts.
        - Max 1 criterium with 1 term matching  1 knowledge artefact from 1 conceptual model.
        - Education session with Cardano on GLEIF EGF and Trust Registries
        - Need to revisit the EFG for WoT
        - keri.one open for crawling for education purposes (thanks Sam!)
        
    - Signify
        - Incept, Rotate, Interact with salty keys, Incept with randy and group keys.
        - Signifide branch coming together.
    - KERIA
        - Incept, Rotate, Interact with salty keys, Incept with randy and group keys.
        - Endpoints for key state and key event logs, oobi resolution

- Announcements
    - ToIP TSP
        - [SPAC Paper](https://github.com/SmithSamuelM/Papers/blob/master/whitepapers/SPAC_Message.md)
            - TSP Whiteboarding Session on Thursday 1PM PDT at ToIP for 1 or 2 hours
    - Abydos Tutorial: Learn KERI, ACDC by issuing and verifying credentials
        - [Tutorial Link](https://bit.ly/keri-abydos-tutorial)
        - KASLCred [submitted](https://github.com/WebOfTrust/schema/pull/2) to WebOfTrust/schema
    

- Discussion
    - Python 3.11 on Dev?
        - Moving to 3.11 on dev branch of keripy
        - KERIA, Signify, Hio, vLEI all getting upgraded
    - IIW Topics Sessions
        - KERI 101 Session - Nuttawut/Phil Introducing KERI
            - Fit into the IIW 101 Series they hold every session
        - KERI 201 Session - Kent (an accelerated developer introduction to KERI and ACDC)
            - Possibly move to demo hour
        - QuiIdentity - demo hour
            - Break out hour on getting KERI / decentralization adopted.
        - RootID participating in DIDComm 2 hack-a-thon - chat, issuance
        - did:keri - Watcher variant
        - Logging into SSH with KERI
        - CESRide/Parside/Signifide whiteboarding session
        - VC-ACDC talk around how to create other Proof Formats for W3C VCs
        - Sam possibly doing talk about SPAC Paper / ESSR (Meta-Cryptographic Systems)
        - Randy (Provenant) doing vLEI in Telecom, cross boarder KYC problems.
            - Binding actors to actions, making communications authentic
        - Salty Nonce drinking game
        - Signify / KERIA planning session (third day session)
        - Create a Google sheet for planning sessions - Phil
        - Sam session on reputation
        
    - The AI Dilemma
        - From the folks that made Social Dilemma
            - https://vimeo.com/809258916/92b420d98a
            - https://www.youtube.com/watch?v=bhYw-VlkXTU
        - Could we mitigate effects with KERI?
            - Its not enough to have cryptograpic authenticity you need reference for who said what
            - String authentication to a natural person  
            - Strong reputation (credentials) for an identifier
            - Content is no longer good source of reputation
        - Start with really strong authenticiation, but need to mitigate the cheap pseudonymity problem
        - Someone training chatGPT to hack into APIs

### 2023-03-21
- Recording
    https://drive.google.com/file/d/1gioQIM2itEbQrfcTy5YsX7KvdkLOwU2g/view?usp=sharing
- Reports
    - CESR
        - PRs to clean up memory "left behind".
        - WASM PR outstanding, might be moved to Signifide
        - Minor releases being published, currently at 0.3.0
    - KERIpy
        - Bunch of work on development exposing the new rotation rules to app level code
        - exposing group member ids (key list offsets) in KLI
        - KERIpy 1.0 released
        
    - Education
        - Review of vLEI EGF with comparisons to community EGF captured in spreadsheet
    - Signify
        - PR in Signifide for moving primitives out of CESRide
        - GLEIF sponsoring a community approach to working on Signify libraries
        - 
    - KERIA
        - Finished AID creation including delegation
        - now working on multi-sig
    - KERIox HCF
    - Cardano
        - Cardano Foundation remains interested in Cardano Backer
        - Interested in creating a community list of Trust Anchors and including Cardano
            - Listing the attributes of each network
    - GUT KERI-Lite
        - Aries community moving forward with did:peer numalgo2 method and not KERI-Lite
        - did:keri url leveraging the url dereferencing process
    - Provenant
        - Working on a trial with YouMail, high speed VOIP
        - Pending demo with XBRL

- Announcements
    - Sam is doing a presentation in 1.5 hours on ACDC Provenance Chains.  In the Data Modeling ToIP group.
        - https://zoom.us/j/99186768208?pwd=TUwxOUIvYW5xL0JHaEJTRlp5ZnNlUT09
    - Lance received his OOR vLEI!
    - VC-ACDC Proposal to VCWG, as a valid external proof format.
        - Rough consensus was not reached on either proposal
        - Confusion on how the compromise in Miami F2F is being interpreted.
        - Could we leverage the work being done on OpenID Connect (OIDC).  
    - IIW on its way.
        - Bring your ideas for session to the April 4th KERI meeting so we can collaborate on sessions.
        - Make sure to get your tickets, may be sold out.
    

- Discussion Items
    - Cardano Backer
        - Where to create a registry of Trust Anchors (witness pools or backers)
            - How to create an appraisable trust basis for and AID based on the key state, signing algo, delegation, multisig and configuration of backers.  Reputation is added via credentials issued to the AID.  
            - Appraisability is how we solve the difficult problems of trust.
        - Current PR:
            - backering for using something other than witnesses as backer, cardano code for Cardano specific backer.  Perhaps refactor to allow Cardano code to be moved externally.
            - Phil and Sam to code review the PR and figure out how to externalize third party backers.
            
    - KERI Authorization for SSH (KASSH)
        - proof of concept for uploading documents using sftp or ssh. Motivated using a KERI AID for SSH.
        - Run a service on any VM (verification service from GLEIF reporting api)
        - Create SSH Auth Credential.
        - Authorization service looks for SSH Auth Credential
        - creates ssh .pem file from public key for KERI AID
        - KASSH has embeded watcher that automatically processes rotation to export ssh keys from new rotation
        - https://github.com/pfeairheller/kassh

### 2023-03-07
- Recording
    https://drive.google.com/file/d/18jf8AvPitYEaphcpo9cVjb31Y64oQDk8/view?usp=sharing
- Reports
    - CESR
        - Created inception event in CESRide, will be moved to Signifide
        - PR submitted for exposing a WASM module from CESRide, may also be moved to Signifide
        - Work on Uniffi was submitted for CESRide, being compared with other FFI approaches
            - Work may be moved into Parside
    - KERIpy
        - Propose merge branch as 1.0 main
        - New utility for rolling back an accidential event not yet published totnesses
        - Signing at edge working on
        - ed448
            - 57 bytes 156 pr keripy and cesride pull request
    - Education
        - Added 2 working sessions to get the site up and running
        - Converting some Markdown files by hand
        - Testing with ChatGPT for creating answers based on user levels.  (beginner, moderate, expert)
        - Governanace related to attestations about terms / definitions in KERI ecosystem
    - Signify
        - GLEIF supporting signify clients in python and rust
        - testing with keria agent and signify client
        - working towared multisig
        - signified (rust signify)
        - JNI Rust spike from Signifide
    - KERIA
        - IN tandem with Signify (cloud agent)
        - Signature and Signature-Input request signing added on both client requests and server responses
    - KERIox HCF
        - Implemented partial rotation
    - Cardano
        - RootsID partnership with Cardano Foundation - IoT, Supply Chain, GLEIF governance.
    - GUT Keri-Lite
        - Aries keri-lite demo
        - Concerned about Maverick Rodolfo
    - Provenant
        - Attended Mobile World Congress conference (90k attendees).  
        - Upcoming potential announcements about KERI in telecomm
        
- Announcements
    - Attend the Trust Spanning Layer ToIP meetings - Next meeting 3/08 - 09:00am MT
    - IIW in just over a month, should coordinate KERI track
    - Next Thursday, KERI Edu Meeting at 07:00 PST
    - Schema "stitching" utility.  KASL repo upcoming. 
        -  Could be placed in ACDC schema repo in WoT.
        -  https://github.com/WebOfTrust/schema
    
- Discussion Items
    - Discussion on main 1.0 KERI
        - PR to upgrade docker file for deploying witnesses
        - Ongoing work on KERIa is forcing some potential breaking changes
        - Propose merge of develement into Main cut new docker file, update keri on pypi
            - versionsing 1.0
            - keri protocol 10
        - Unanimous vote approving the proposal to merge development into main.
        - Bug fixes get a patch release version update
        - New features get a minor release version update
        - Document using development pip install locally (pip install -e .)
        - Process around announcing and voting on both major and minor release updates.
            - Daniel was triggered.  Can we version CESR code tables separately from KERIpy
            - Version of KERI, KERIpy and CESR code table protocol versions do not need to be kept in lock step
            
    - KERI Lite
        - Sam:  Service endpoint bound to DID, so we can't change the endpoint without changing the DID.


### 2023-02-21
- Recording
    Did not record
    
- Reports
    - CESR
        - Saider, Sadder done or in PR
        - Refactor to allow for accepting all arguments into a single method.
        - Prefixer in the works but need to refactor tests
        - PR waiting for review on Seqner
    - KERIpy
        - Utility class pushed for cleaning up unresolable OOBIs
        - Outstanding PR on its way for SignifyHab
    - Education
        - Testing with ChatGPT for explanations of typical KERI/ACDC terminology.
        - Looking for help reviewing the output of ChatGPT
        - Looking to discuss how we could use KERI/ACDC to attest to definitions, Q&As and other educational resources.
        - We've been testing with ChatGPT to offer various levels in educational or explanatory resources. All outcomes need te be reviewed. How could we use KERI identifiers to commit to either reviews or explanations given in meetings. We should grab every opportunity to consolidate a review (in an ACDC?) by experts in our team.
    - Signify
        - Signify-TS work currently on hold from GLEIF resources
        - SignifyPy is a python client library for working against the new cloud agent in KERIA
    - KERIA
        - New cloud agent for being controlled by a Signify Client
    - KERIox HCF
    - Cardano
        - Outstanding PR to review and decide what to do.
    
    
- Announcements
    - W3C VC Face-to-Face outcome
        - Meeting scheduled to solve the "@context optional" discussion.
        - Media types being used to differentiate between types of credentials and verifiable credentials.
        - Decision to create a "base media type" that is `credential+ld+json.`  Other media types of credentials are allowed by must provide either unidirectional or bidirectional transformations.  So for example we would create credential+acdc+json and provide a unidirectional transformation to credential+ld+json.
        - VC-ACDC to become a proof format peer to VC-JWT in the W3C specification.
        - Unidirectional transformation means we don't have to make any security compromises with what we send over the wire.
        - https://github.com/andrewwhitehead/anoncreds-w3c-mapping
    - ToIP Trust Spanning Layer Task Force
        - Proposals from Sam Smith, Daniel Hardman already made with others to follow
        - Looking to come together on the different proposals to consolidate into one definition of Trust Spanning Layer
        - Task force is mandated to produce Specifications.
        - https://github.com/trustoverip/trust-spanning-protocol/discussions
    - Sam to talk at the ToIP Data Modeling group meeting Tuesday 3/7/2023
        - Discuss the experience setting up the RoOT of Official Trust at GLEIF in the vLEI
        - What does it look like to provide and retain those chains.
        - Remote Attestations (Ratts Group, IETF).  Establishing a hardware root of trust using authentic attestations to the state of hardware components.


- Discussion Items
    - Does anything in the Keri/ACDC world replace DNS? If not entirely, does it replace any aspect of DNS
        - Neil: Jacques Latour (CIRA) is advocating that KERI/ACDC need to work w DNS and particularly DNSSEC (current tech work) vs. attempting to replace it.

### 2023-02-07
- Recording  
    - https://drive.google.com/file/d/13h0tVm3Bj0REWW9hErnwJQO9rLAvRDk6/view?usp=sharing

- Reports
    - CESR
        - Exploring some integration with Python
            - https://github.com/WebOfTrust/cesride/pull/59
        - Uniffi investigation underway for support of Python, Ruby, Swift, Kotlin
            - https://github.com/mozilla/uniffi-rs
        - 38% complete of a 1.0 milestone
            - https://github.com/WebOfTrust/cesride/milestone/1
        - Work continues on Indexer
    - KERIpy
        - Beginning implementation of superceding recovery rules for delegated identifiers
            - Leveraging cooperative delegation to allow for a recovery rotation over a rotation (latest seal wins)
            - Uses order of appearance of seal in delegator's KEL
            - Requires walking up the delegation tree when one exists
        - SignifyHab for integrating with Signify client
    - Education
        - Now ready to introduce the Levels of information and glossary.
        - Using React to guide users based on Level 1, 2 or 3.
        - More information on Thursday
    - Cardano
    - KERIox HCF
        - Start implementing partial rotation rules
    - Signify
        - Added new repo for Signifypy for Python agent that will work with Signify client
        - Request and response signing using Signature-Input and Signature structure field value HTTP headers
    - Keep
        - Janet G. Designer will export .fig figma file for all the open source UX designs for Keep
        - Anyone can then export and create assets
        - GLEIF roadmap continue development of Root GAR and Person Builds of Keep and push back upstream from GLEiF Fork
    - did:keri
        - Refactored and published in the did-keri-resolver for the KERI-lite version of did:keri
        - 3 flavors of did:keri

- Announcements
    - Ruth - Provenant as Legal Entity issued first ever ECR to Timothy Ruff as Corporate Director
    - Neil - Looking at authentic provenance chains and Trust Registries over at ToIP Data Modeling and Representation Group 12:00pm EST
    - Feb 14,15,16 W3C VC working group holding F-2-F meeting in Miami to resolve an issue that has not been resolvable to date
    - If "@context" and JSON-LD is a MUST in v2.0 of VC Data Model Spec "Big Tent vs Little Tent"
    - Could allow for ACDCs to be complaint implementations of W3c VCs
    - GLEIF now W3C member
    - Sam presenting to ToIP in the Technical Stack Working Group 2/8 9am MT - KERI as a proposal for Trust Spanning Layer
        - Trust Spanning Protocol Task Force within the Technical Stack Working Group
        - Prior "reading" Sams presentation of the hour glass theorum 
        - https://zoom.us/rec/share/rddaWi5PcDp_axmoLhK617WbmM3EWpFUBfX2GS4q_feuhhzn_Of9Yy0cSuS3IFFw.8DLf29JpSmCViVc0
    - Daniel to present in a few weeks

- Review Issues
    - Define and create 1.0 version of KERIpy
    - Roadmap Big Frogs for KERIpy
        - Superceding rotation delegation rules - [Issue 26](https://github.com/WebOfTrust/keripy/issues/26)
        - CESR updates for CESR native events - [Issue 212](https://github.com/WebOfTrust/keripy/issues/212)
        - Split topics across KERI and CESR topic meetings
    - Call to action for community members to review issues and bring of issues of interest next meeting

- Question from Joseph regarding Signify
    - I am slightly confused why a new agent is required for Signify. Why existing agent does not work?
        - existing agent runs by locking/unlocking and stores salt in memory thus private keys not a good cloud deployment model (never deployed)
        - many apis rely on an unlocked datastore
        - helps with extracting the agent from KERIpy
            - signifypy - https://github.com/WebOfTrust/signifypy

- Discussion Items


### 2023-01-24
- Recording
    - No Recording made

- Reports
    - CESR
        - English semantic naming by Sam (see recording)
        - Future of CESR - "roadmap" issues
        - cesride/parside split
        - sunset weboftrust/cesrox
        - CESRide - the project formerly known as CESRox
        - Matter PR
        - cesr-dev 
    - KERIpy
        - refactor to support dual index signatures and multisig formation (robustness)
    - Education
        - next Thu (26th) same time Education meeting about the switch to Docusaurus as the documentation system of our future.
    - Cardano
        - PR in keripy
    - KERIox HCF
        - refactoring and new bindings for group events
    - Keep
    - Signify

- Announcements
    
    - Rodolfo presents "didcomm-keri-light"
        - "keri-light" not meaning to water down KERI
        - potential to replace did:peer with did:keri (or the implementation of did:peer utilizes keri?)
        - uses keri/core/eventing
        - uses in memory kel (hack)
        - python didcomm lib (?name)
        - couldn't use non-transferable AID with data in inception event (so it validates)
            - use transferable with no next keys, can't rotate but you get an icp (effectively ephemeral)
        - https://github.com/rodolfomiranda/keripy/blob/didcomm-keri-light/didcomm/keri-lite.py

### 2023-01-10
- Recording
        - https://drive.google.com/file/d/1TsnU2jTa2RzfMft8asx5O8-7pcTrwyRw/view?usp=share_link

- Reports
    - CESR
        - New codes in the next few weeks
    - CESRide - the project formerly known as CESRox
        - New name is CESRide - reop created and registered in crates.io
        - Acknowledged the fork and CESRide will be Apache2 in WoT
        - Architecture proposal to match existing naming conventions (as closely as possible) in Rust
        - Full discussion to follow in the CESRide meeting
    - KERIpy
        - New rotation rules using dual index signatures are now in place
        - Allows you to introduce new signing keys that weren't previously part
        - Hold signing keys in reserve.  Partial rotation and custodial rotation support.
        - Removal of assumption that digests were all using the same algorithm
        - Walk the KEL for group multisig - should not be afraid to walk the kel for decisions regarding prior key state
    - Education
    - Cardano
        - PR submitted.  Refactored to match KERIpy
        - Work in process, looking for comments about what should be included in the repo
    - KERIox HCF
    - Keep
    - Signify
        - So support for the client side functionality with ported unit tests
        - Now working on the host server side = Signify Agent
        - Refactor the Hab and GroupHab and SignifyHab
        - Architecture (single multi-tenant agent versus multiple agents)
            - https://github.com/WebOfTrust/signifypy
            - https://github.com/WebOfTrust/signify-ts

- Announcements
    - Grand Unification Theory (GUT) of Trust
        - https://docs.google.com/presentation/d/1ksqVxeCAvqLjr67htWZ4JYaSnI8TUZIO7tDMF5npHTo/edit?usp=sharing
    - Specific asks for KERI in regards to DIDComm
        - [eventually] Adopt DIDComm's composable protocols to get peer-to-peer, n-wise, offline.
        - [eventually] Design a DIDComm protocol for contractually protected disclosure.
        - [eventually] Adopt (and improve) DIDComm's confidential envelopes/routing to complete privacy story.
        - [ASAP] Produce "KERI lite" DID impl to replace peer DID libs.
        - Removing ecdh-1pu, when you know the AID might as well use TLS
        - Proposal to create KERI-lite as a minimal subset for existing non-KERI solutions to adopt KERI
            - Useful for authentic data without concern for shared identities
    - Thin waist of trust diagram.
        - Authentic
        - Confidential / Private
        - Empowered Peers
        - Daniel's ask for the KERI community is to make a strong case for privacy.

 - Trust Anchor as Discovery Bootstrap
    - Trust Anchor Trust Domain Trust Culture (Ecosystem)
    - How does an AcaPy wallet talk KERI
        - For ledger based DIDs, the ledger _also_ provides discovery along with security
        - KERI does not have a known single source of discovery
            - No fixed point of discovery, KERI relies on OOBIs and percolated discovery
            - did:peer has the same points of discovery problems that KERI does
                - to "discover" a did:peer DID you need to first exchange DIDDocs
        - With an EGF with public known witnesses, you have a Trust Anchor for the ecosystem and thus a discovery mechanism for that ecosystem
            - For example, the vLEI has their published witnesses so AIDs of vLEI holders can be discovered
        - did:keri can have a backing store and backing watchers to keep an eye on ecosystem trust anchors

