# Shared Component License

Developer: {Legal Name}

<!-- The developer could be an individual, but more likely a legal entity. -->

Homepage: {URL}

<!-- Inspired by the "Source Code" notice line at the top of Parity.  Developers have been confused about what to put in the Source Code line.  Homepage and a URL placeholder should clear things up. -->

## Purpose

<!-- See https://writing.kemitchell.com/2019/01/10/Discipline-Stated-Purpose.html -->

This license gives you broad permission to work with this software for any purpose, but requires you to contribute source code for changes, additions, and superstructure.

<!-- Compare Parity, which does not make any permissive allowance for applications integrating the software being licensed: "This license lets you use and share this software for free, as long as you contribute software you make with it." -->

## Disclaimer

***As far as the law allows, this software comes as is, without any warranty, and the developer will not be liable to anyone for any damages related to this software or this license, for any kind of legal claim.***

<!-- Plain text renderings of the license should use symbols, like asterisks, rather than ALL CAPS, for conspicuity. -->

## Acceptance

In order to receive this license, you must agree to its rules.  The rules of this license are both obligations under our agreement and conditions to your license.  You may not do anything with this software that triggers a rule you cannot or will not follow.

<!-- Because the license puts significant obligations on the licensee, we need to dispel confusion about legal characterization and remedies. To head off wasteful arguments in uncharted legal territory, expressly recite both contract and license.  The terms alone cannot establish contract. But in the likely event that facts do, clarify the consequences. -->

<!-- The final sentence goes to impossibility and frustration.  It may not be necessary, but we'd all better avoid the argument. -->

## Copyright

The developer licenses you to do everything with this software that would otherwise infringe copyrights in this software they can license.

## Patent

The developer licenses you to do everything with this software that would otherwise infringe any patent claims they can license.

<!-- Note the absence of any scope restriction, like Apache 2.0's limit to patents readings on the version to which someone contributed. First, that kind of scope language isn't particularly assuring.  It's often unclear how to tell what patents get covered, even with revision control data to hand.  Second, the primary use case for this license is entity licensors, who can do a single outbound patent analysis.  -->

<!-- Note that Contributing requires a strong patent grant. -->

## Reliability

The developer will not revoke this license.

<!-- Express irrevocability.  Note that headings are _not_ disclaimed, and Reliance evokes the relevant legal concept. -->

## Notices

You must ensure that everyone who gets a copy of any part of this software from you, in source code or any other form, with or without changes, also gets the text of this license, including its developer and homepage lines.

<!-- An orthodox open source style attribution condition. -->

## Contribution

When this license requires you to contribute software:

<!-- This language functions like a defined term, without falling back on lawyerly conventions that alienate non-lawyer readers. -->

1.  Publish all source code for that software, in the preferred form for making changes, through a freely accessible distribution system widely used for similar source code, so the developer and others can find and copy it.

<!-- FSF has objected to licenses that require sending code back to the licensor specifically. -->

<!-- On criterion 10 of the Open Source Definition, see https://writing.kemitchell.com/2018/11/05/OSD-Copyleft-Regulation.html#technology-neutrality -->

2.  License new parts of that software that hasn't already been contributed under the terms of this license, so the developer and others may work with that software.  Alternatively, you may license new parts of that software on other terms with substantially the same legal effect as [Copyright](#copyright), [Patent](#patent), and [Reliability](#reliability).  Your other terms may, but need not, include a rule like [Notices](#notices), a disclaimer like [Disclaimer](#disclaimer), or both, but no other terms.  For example, you may license under the [BSD-2-Clause Plus Patent License](https://spdx.org/licenses/BSD-2-Clause-Patent.html).

<!-- Note that criterion 3 of the Open Source Definition requires permitting licensing on the same terms: https://writing.kemitchell.com/2018/11/05/OSD-Copyleft-Regulation.html#allow-the-same-terms-for-derived-works -->

<!-- Note that BSD-2-Clause-Patent's patent grant follows Apache 2.0's approach to scope. -->

## Changes

Contribute changes to files containing this software.

<!-- Designed to approximate MPL 2.0 style copyleft. -->

## Additions

Contribute additions to this software.  You need not contribute additions to other software that only invokes this software's functionality through the interfaces this software exposes, unless [Superstructure](#superstructure) requires.

<!-- Designed to sweep optimizations, functionality adds, and other improvements to the licensed software. -->

## Applications

You need not contribute applications that only invoke this software's functionality through the interfaces this software exposes, unless [Superstructure](#superstructure) requires.

<!-- Makes the selective nature of the copyleft rules explicit. -->

<!-- Compare MongoDB's statements on AGPLv3 https://www.mongodb.com/blog/post/the-agpl and SSPLv1 https://www.mongodb.com/licensing/server-side-public-license/faq#implications -->

## Superstructure

<!-- Other terms considered: "extensions", "framing" -->

Contribute software used to expose this software's interfaces and functionality to applications.  For example, contribute software for managing instances of this software, orchestrating its deployment, logging its activity, monitoring its performance, or backing up its data.

<!-- Note the parallelism of "functionality" and "interfaces" with Applications and Additions. -->

<!-- The examples list cannot but restrict the more general language of the sentence before it. -->

<!-- Compare the illustrative list in the definition of "Service Source Code" in section 13 of SSPLv2:  management software, user interfaces, application program interfaces, automation software, monitoring software, backup software, and host orchestration software" -->

## Interfaces

Interfaces exposed by this software include all the interfaces this software provides users or other software to invoke its functionality.  For example, command line, graphical, application programming, remote procedure call, and inter-process communication interfaces.

## Excuse

You are excused for unknowingly breaking [Notices](#notices), [Changes](#changes), [Additions](#additions), or [Superstructure](#superstructure) if you do what the rule requires, or stop doing anything requiring this license, within 30 days of learning you broke the rule.

<!-- This language permits multiple excuses, so long as the rule breaker doesn't know about their breach on account of factual circumstances, rather than ignorance of the license terms.  First notice of any violation will make a licensee aware of the license terms. -->
