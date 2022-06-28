**This document explains what development tools have been used and why.**

## KERI in general
### Sphinx documentation builder
According to the sphinx website:
Sphinx is a documentation generator or a tool that translates a set of plain text source files into various output formats, automatically producing cross-references, indices, etc. That is, if you have a directory containing a bunch of reStructuredText or Markdown documents, Sphinx can generate a series of HTML files, a PDF file (via LaTeX), man pages and much more.\
Sphinx experience is a great asset for a GNU Linux technical writer.
#### Why is it relevant for KERI?
{TBW}
#### Why Sphinx and not something else?
{TBW}

### What is Swagger and OpenAPI?
Formerly known as Swagger, OpenAPI has a long and established history. In 2010, Swagger started as an open source specification for designing and documenting RESTful APIs.
In 2015, the Swagger project was acquired by SmartBear Software. The Swagger Specification was donated to the Linux foundation and renamed the OpenAPI.
[source](https://www.udemy.com/course/openapi-beginner-to-guru/learn/lecture/17096798#overview)
#### Why is it relevant for KERI?
{TBW}
#### Why Swagger / OpenAPI and not something else?
{TBW}

### What exactly is a REST API?
There are numerous types of APIs, making it difficult for new developers to differentiate between each kind. In particular, REpresentational State Transfer (REST) is a software architectural style that developers apply to web APIs. REST APIs provide simple, uniform interfaces because they can be used to make data, content, algorithms, media, and other digital resources available through web URLs. Essentially, REST APIs are the most common APIs used across the web today.
To make the API service RESTful, six guiding constraints must be satisfied:
1.	Use of a uniform interface (UI): To have a uniform interface, multiple architectural constraints are required to guide the behavior of components. Additionally, resources should be unique so they are identifiable through a single URL.
2.	Client-server based: The uniform interface separates user concerns from data storage concerns. The client’s domain concerns UI and request-gathering, while the server’s domain concerns focus on data access, workload management, and security. The separation of client and server enables each to be developed and enhanced independently of the other.
3.	Stateless operations: Request from client to server must contain all of the information necessary so that the server can understand and process it accordingly. The server can’t hold any information about the client state.
4.	RESTful resource caching: Data within a response to a request must be labeled as cacheable or non-cacheable.
5.	Layered system: REST allows for an architecture composed of hierarchical layers. In doing so, each component cannot see beyond the immediate layer with which they are interacting.
6.	Code on demand: Because REST APIs download and execute code in the form of applets or scripts, there’s more client functionality. Oftentimes, a server will send back a static representation of resources in the form of XML or JSON. Servers can also send executable codes to the client when necessary.

[source](https://blog.postman.com/rest-api-examples/)
#### Why is it relevant for KERI?
{TBW}
#### Why REST API and not something else?
{TBW}

### What is a REST API wrapper?
A Wrapper Class (or the Wrapper Pattern) is where you declare a Class as a container for an sObject to extend the functionality only for display or processing purposes (i.e. you don't intend for that attribute to be persisted) - the classic example is a checkbox to select records. I would say that a DTO is a slightly dumbed down version of such a wrapper (used in conventional OOP to pass structured data between the layers)
A REST Api wrapper is something slightly different. For example Salesforce exposes a REST Api and if you were to invoke that say from C#, you would have to perform a set of common steps such as login, query, etc. To make this available in C# by abstracting the innards of the actual REST calls to salesforce and exposing only the developer relevant detail, you could write a rest wrapper which performs these commonly used functions - creates requests, parses responses, etc

[source](https://salesforce.stackexchange.com/questions/5834/can-somebody-explain-what-is-a-rest-api-wrapper)
#### Why is it relevant for KERI?
{TBW}
#### Why REST API wrapper and not something else?
{TBW}

### What is Postman? 
Postman is an API platform for building and using APIs. Postman simplifies each step of the API lifecycle and streamlines collaboration so you can create better APIs—faster. 
[source](https://www.postman.com)
#### Why is it relevant for KERI?
{TBW}
#### Why Postman and not something else?
{TBW}

### What is Paw?
Paw is a full-featured HTTP client that lets you test and describe the APIs you build or consume. It has a beautiful native macOS interface to compose requests, inspect server responses, generate client code and export API definitions.
[source](https://paw.cloud)
#### Why is it relevant for KERI?
{TBW}
#### Why Paw and not something else?
{TBW}

### What is XBRL?
XBRL is the open international standard for digital business reporting, managed by a global not for profit consortium, XBRL International. We are  committed to improving reporting in the public interest. XBRL is used around the world, in more than 50 countries. Millions of XBRL documents are created every year, replacing older, paper-based reports with more useful, more effective and more accurate digital versions.
In a nutshell, XBRL provides a language in which reporting terms can be authoritatively defined. Those terms can then be used to uniquely represent the contents of financial statements or other kinds of compliance, performance and business reports. XBRL lets reporting information move between organisations rapidly, accurately and digitally.
[source](https://www.xbrl.org/the-standard/what/an-introduction-to-xbrl/)
#### Why is it relevant for KERI?
{TBW}
#### Why XBRL and not something else?
{TBW}

### What is Arelle?

Arelle is a project to provide the XBRL community with an easy to use open source platform for XBRL.  It supports XBRL and its extension features in an extensible manner.  It does this in a compact yet robust framework that can be used as a desktop application and can be integrated with other applications and languages utilizing its web service.
[source](https://arelle.org/arelle/)
#### Why is it relevant for KERI?
{TBW}
#### Why Arelle and not something else?
{TBW}

### What is Workiva?
Workiva brings together everything you need—teammates, datasets, and data sources—so you can work better in the cloud. Wherever you are, whatever you’re doing. Automate what’s slowing you down. Focus on what fires you up.
[source](https://www.workiva.com/en-nl/)
#### Why is it relevant for KERI?
{TBW}
#### Why Workiva and not something else?
{TBW}

## Keripy

### What is Pypi?
The Python Package Index (PyPI) is a repository of software for the Python programming language.\
PyPI helps you find and install software developed and shared by the Python community. Learn about installing packages. Package authors use PyPI to distribute their software. Learn how to package your Python code for PyPI.
[source](https://pypi.org/)
#### Why is it relevant for KERI?
The team wants to distribute KERI uniformly and as broad as possible.
#### Why Pypi and not something else?
It's the best of breed and most commonly used in the Python community.