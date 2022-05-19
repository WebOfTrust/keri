# Keri Community

## KERI Community Development Efforts

### Associated Specifications
The table below lists all deliverables of the KERI Community:
| Acronym | Full Name of Deliverable | Link to Deliverable | Lead Authors | Status / Notes |
|---|---|---|---|---|
| KERI | Attributable (Autonomic) Identifiers (KERI) | [IETF KERI Draft](https://github.com/WebOfTrust/ietf-keri) | Samuel Smith | |
| SAID | Self-Addressing Identifiers | [IETF SAID Draft](https://github.com/WebOfTrust/ietf-said) | Samuel Smith | [Active Draft](https://datatracker.ietf.org/doc/draft-ssmith-said/) |
| CESR | Composable Event Streaming Representation | [IETF CESR Draft](https://github.com/WebOfTrust/ietf-cesr)| Samuel Smith |[Active Draft](https://datatracker.ietf.org/doc/draft-ssmith-cesr/)|
| DID KERI | KERI DID Method | [IETF DID KERI Method Draft](https://github.com/WebOfTrust/ietf-did-keri) | Phil Feairheller | |
| ACDC | Authentic Chained Data Containers | [IETF ACDC Draft](https://github.com/trustoverip/tswg-acdc-specification) | Samuel Smith | [Active Draft](https://datatracker.ietf.org/doc/draft-ssmith-acdc/) |
| CESR Proof| CESR Proof Signatures | [IETF CESR Proof Signatures Draft](https://github.com/WebOfTrust/ietf-cesr-proof) | Phil Feairheller | [Active Draft](https://datatracker.ietf.org/doc/draft-pfeairheller-cesr-proof/) | 
| PTEL | Public Transaction Event Logs | [IETF PTEL Draft](https://github.com/WebOfTrust/ietf-ptel) | Phil Feairheller | [Active Draft](https://datatracker.ietf.org/doc/draft-pfeairheller-ptel/)| 
| IPEX | Issuance and Presentation Exchange protocol | [IETF IPEX Draft](https://github.com/WebOfTrust/ietf-ipex) | Sam Smith, Phil Feairheller | |
| OOBI | Out-Of-Band-Introduction | [IETF OOBI Draft](https://github.com/WebOfTrust/ietf-oobi) | Sam Smith |[Active Draft](https://datatracker.ietf.org/doc/draft-ssmith-oobi/)|

### Why IETF

The value statement and organizational principles of the IETF strongly resonate with KERI.
Quoting from [The Tao of IETF](https://www.ietf.org/about/participate/tao/), **emphasis added**:

>The IETF is a loosely self-organized group of people who contribute to the engineering and evolution of Internet technologies. It is the principal body engaged in the development of new Internet standard specifications. The IETF is unusual in that it exists as a collection of happenings, online and in-person, **in which individuals voluntarily participate. It has no members, and no dues;** see [RFC 3935](https://datatracker.ietf.org/doc/html/rfc3935), "A Mission Statement for the IETF", for more detail.
>
>Its mission includes the following:
>
>> + Identifying and proposing solutions to pressing operational and technical problems in the Internet  
>> + Specifying the development or usage of protocols and the near-term architecture to solve such technical problems for the Internet  
>> + Making recommendations to the Internet Engineering Steering Group (IESG) regarding the standardization of protocols and protocol usage in the Internet  
>> + Facilitating technology transfer from the Internet Research Task Force (IRTF) to the wider Internet community  
>> + Providing a forum for the exchange of information within the Internet community between vendors, users, researchers, agency contractors, operators, and network managers 
>>  
>The IETF mission further states that the Internet isn't value-neutral, and neither is the IETF. The IETF wants the Internet to be useful for communities that share our commitment to openness and fairness. The IETF embraces technical concepts such as decentralized control, edge-user empowerment and sharing of resources, because those concepts resonate with the core values of the IETF community. These concepts have little to do with the technology that's possible, and much to do with the technology that we choose to create.  

We always believed that the end state for KERI standards would be at IETF but were willing to incubate them elsewhere in advance of the formal IETF RFC standards track process if for no other reason than familiarity. We believe that there is now no longer any need for incubation. The last year has seen the keripy implementation reach beta status including support for fully functional verifiable credentials. We believe that this has sufficiently informed KERI to propose a set of IETF Internet-Draft submissions for KERI and related technology which are being pursued under the auspices of this project, [WebOfTrust](https://github.com/WebOfTrust), with associated repositories for both code and IETF Internet-Drafts. Like a phoenix from the ashes we believe that KERI fixes the limitations of the orignal PKI based [Web-Of-Trust](https://en.wikipedia.org/wiki/Web_of_trust). With a KERI enabled decentralized Web-Of-Trust we truly have a path forward to achieve a truly decentralized **trust spanning layer** for the Internet; (see [Hourglass Model](https://cacm.acm.org/magazines/2019/7/237714-on-the-hourglass-model/fulltext)).

#### Previous Work

An attempt to incubate the work at DIF was initially fruitful but DIF's policy of not allowing individual contribution except under very narrow conditions became an impediment to further progress in achieving the long term goals and aspirations of KERI, especially KERI's goal to be the trust spanning layer for the Internet. That goal depends on contributions from any source with minimal friction. Specifically, DIF's policy that any employee may not be an individual contributor at DIF unless that employee's respective employer entity is also a member of DIF prevented several would be valuable contributors from contributing to KERI. Moving forward, the IETF focused standards process is clearly a better home for KERI. 

### Policy
See the documents in this repo titled [LICENSE.md](https://github.com/WebOfTrust/Keri/blob/main/LICENSE.md) and [CONTRIBUTING.md](https://github.com/WebOfTrust/Keri/blob/main/CONTRIBUTING.md) for licensing and contributing policy. Besides the IETF licensing terms, these include the comprehensive Apache2 license for all associated intellectual property (IP) including patents. The advantage of one comprehensive license for all contributions is that there will always be alignment between all contibutors and for any type of contribution. This alignment includes an **inbound=outbound** [policy](https://opensource.guide/legal/) for all related IP. We only want contributions to KERI made here in the WebOfTrust project that are licensed as free, and [nonreciprical](https://opensource.org/node/875) open source be it software or specification.  

## Meetings

We meet every other Tuesday at 10 am EDT (or EST). (First meeting was  2021 October, 19 )
The zoom link is here:
https://us02web.zoom.us/j/89842900185?pwd=OEpXSU5pa29FR1A3OXFkUithZFNwQT09
Meeting ID: 898 4290 0185
Passcode: 300255

The meeting agenda may be found [here](https://github.com/WebOfTrust/keri/blob/main/agenda.md)

### Related Meetings
A closely related specification that leverages KERI is ACDC. This is hosted at ToIP and meets on the alternate weeks at the same time as the KERI meetings. These meetings complement the KERI meetings reference above. For information look here [ToIP ACDC Task Force](https://wiki.trustoverip.org/display/HOME/ACDC+Meeting+Page) and here [ACDC IETF Draft](https://github.com/trustoverip/tswg-acdc-specification).

## Existing Implementations
The reference implementation for KERI is the keripy implementation. This is hosted here by the WebOfTrust project. The repository may be found here:  
* [keripy](https://github.com/WebOfTrust/keripy) – under development  

The keripy implementation is Apache2 licensed as are all repositories in the WebOfTrust project. 

There is also an Apache2 licensed Rust implementation of KERI hosted by the WebOfTrust project which may be found here:   
* [keriox](https://github.com/WebOfTrust/keriox) – under development  

The primary contributors to keriox have since moved their efforts elsewhere to a private repository with a non Apache2 license. 
As a result the WebOfTrust keriox implementation above is somewhat behind the keripy implementation in terms of
feature support. We encourage the community to step forward and continue development of the Apache2 licensed Rust implementation.

We also encourage implementations of KERI in other languages. We are happy to host other implementations here
in the WebOfTrust project as long as they are Apache2 licensed.

