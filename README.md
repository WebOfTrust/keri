# Keri Community

## KERI Community Development Efforts

### Associated Specifications
The table below lists all deliverables of the KERI Community:
| Acronym | Full Name of Deliverable | Link to Deliverable | Lead Authors | Status / Notes |
|---|---|---|---|---|
| KERI | Attributable (Autonomic) Identifiers (KERI) | [IETF KERI](https://github.com/WebOfTrust/ietf-keri) | Samuel Smith | |
| SAID | Self-Addressing Identifiers | [IETF Draft](https://github.com/WebOfTrust/ietf-said) | Samuel Smith | |
| CESR | Composable Event Streaming Representation | [IETF CESR Draft](https://github.com/WebOfTrust/ietf-cesr)
| DID KERI | KERI DID Method | [Unofficial Draft Spec](https://identity.foundation/keri/did_methods/) | Phil Feairheller | |
| ACDC | Authentic Chained Data Containers | [Pre-Draft Deliverable](https://github.com/SmithSamuelM/Papers/blob/master/whitepapers/ACDC.web.pdf) | Samuel Smith | [Slides from the original white paper](https://github.com/SmithSamuelM/Papers/blob/master/presentations/ACDC.web.pdf) |
| CESR Proof| CESR Proof Signatures | [IETF CESR Proof Signatures Draft](https://github.com/WebOfTrust/ietf-cesr-proof) | Phil Feairheller | [Active Draft](https://datatracker.ietf.org/doc/draft-pfeairheller-cesr-proof/) | 
| PTEL | Public Transaction Event Logs | [IETF PTEL Draft](https://github.com/WebOfTrust/ietf-ptel) | Phil Feairheller | | 
| IEXP | Credential Issuance and Exchange Protocol | | Phil Feairheller | |

### Why Here? Why Now?

After some crucial conversations, often painful, we have decided to resume the broader KERI development and standards process here under the auspices of the WebOfTrust/keri GitHub repository. An attempt to incubate the work at DIF was initially fruitful but DIF's policy of not allowing individual contribution except under very narrow conditions became an impediment to further progress in achieving the long term goals and aspirations of KERI, especially KERI's goal to be the trust spanning layer for the Internet. That goal depends on contributions from any source with minimal friction. Specifically, DIF's policy that any employee may not be an individual contributor at DIF unless that employee's respective employer entity is also a member of DIF prevented several would be valuable contributors from contributing to KERI. Should DIF ever change that policy we might reconsider reengaging with DIF, albeit highly unlikely because the benefit of incubation appears to have passed. Moving forward, however, we believe the IETF will prove itself to be a better home for KERI. Indeed the value statement and organizational principles of the IETF strongly resonate with KERI.
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

We always believed that the end state for KERI standards would be at IETF but were willing to incubate them elsewhere in advance of the formal IETF RFC standards track process if for no other reason than familiarity. We believe that there is now no longer any need for incubation. The last few months, indeed weeks have seen the keripy implementation reach beta status including support for fully functional verifiable credentials. We believe that this has sufficiently informed KERI to propose a set of IETF Internet-Draft submissions for KERI and related technology which resulted in this project, [WebOfTrust](https://github.com/WebOfTrust), with associated repositories for both code and IETF Internet-Drafts. Like a phoenix from the ashes we believe that KERI fixes the limitations of the orignal PKI based [Web-Of-Trust](https://en.wikipedia.org/wiki/Web_of_trust). With a KERI enabled decentralized Web-Of-Trust we truly have a path forward to achieve a truly decentralized **trust spanning layer** for the Internet; (see [Hourglass Model](https://cacm.acm.org/magazines/2019/7/237714-on-the-hourglass-model/fulltext)).

### Policy
See the documents in this repo titled [LICENSE.md](https://github.com/WebOfTrust/Keri/blob/main/LICENSE.md) and [CONTRIBUTING.md](https://github.com/WebOfTrust/Keri/blob/main/CONTRIBUTING.md) for licensing and contributing policy. Besides the IETF licensing terms, these include the comprehensive Apache2 license for all associated intellectual property (IP) including patents. The advantage of one comprehensive license for all contributions is that there will always be alignment between all contibutors and for any type of contribution. This alignment includes an **inbound=outbound** [policy](https://opensource.guide/legal/) for all related IP. We only want contributions to KERI that are freely licensed open source be it software or specification.

## Meetings

We meet every other Tuesday at 10 am EDT (or EST). (First meeting was  2021 October, 19 )
The zoom link is here:
https://us02web.zoom.us/j/89842900185?pwd=OEpXSU5pa29FR1A3OXFkUithZFNwQT09
Meeting ID: 898 4290 0185
Passcode: 300255

The meeting agenda may be found [here](https://github.com/WebOfTrust/keri/blob/main/agenda.md)

## Existing Implementations

* [keripy](https://github.com/WebOfTrust/keripy) – under development
* [keriox](https://github.com/WebOfTrust/keriox) – under development


|feature / implementation|keripy|keriox|
|---|---|---|
|**Peer to Peer mode** (controller to controller)|✓|✓|
|**Witness mode**|✓|✓/𐄂|
|**Multi signature mode**|✓|✓|
|**Delegation mode**|✓|✓|

_Feature completness table per implementation_
