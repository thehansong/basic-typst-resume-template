#import "../src/lib.typ": *

// Put your personal information here, replacing mine
#let name = "(Hans) ONG You Yang"
#let location = "Singaporean"
#let email = "thehansong@gmail.com"
#let github = "github.com/thehansong"
#let linkedin = "linkedin.com/in/thehansong"
#let phone = "+65 9868 9019"
#let personal-site = "thehansong.com"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #Leadership(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/

== Education

#edu(
  institution: "Singapore Institute of Technology & DigiPen Institute of Technology",
  location: "Singapore & Redmond, WA",
  dates: dates-helper(start-date: "Aug 2022", end-date: "Apr 2026"),
  degree: "Bachelor of Science (Hons.) in Computer Science in Real-Time Interactive Simulation (RTIS)",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
// - Cumulative GPA: 4.0\/4.0 | Dean's List, Harvey S. Mudd Merit Scholarship, National Merit Scholarship
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci

/* #edu(
  institution: "The Wharton School — University of Pennsylvania",
  location: "Philadelphia, PA (Remote from Singapore)",
  dates: dates-helper(start-date: "Aug 2025", end-date: "Oct 2025"),
  degree: "Executive Education, Product Management and Strategy",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
*/

== Work Experience

#work(
  company: "Uber Technologies, Inc.",
  dates: dates-helper(start-date: "Oct 2025", end-date: "Present"),
  title: "AI Solutions Engineer",
  location: "Singapore (Remote)",
)
- Delivered technical consulting to enterprise clients *(Shopee*, *PETRONAS*, and *Trip.com Group)*, by partnering with Pre-Sales, Solutions Engineers, and Customer Success Managers to design, demo, and deliver AI Ads *proof of concept (POCs)* across JAPAC, supporting *3 enterprise accounts* at *\~USD\$2–3M+* deal valuation across *Q4, 2025* to *Q1, 2026*.
- Led AI Ads success metric definition, achieving *\~5–10\%* CTR uplift, *\~3–7\%* conversion improvement, and *\~20–30\%* reduction in campaign and creative iteration costs via Uber’s proprietary AI Ads.

#work(
  company: "GovTech Singapore",
  dates: dates-helper(start-date: "Sep 2025", end-date: "Present"),
  title: "AI Engineer Intern",
  location: "Singapore",
)
- Led and delivered *30+* technical demos, proof of concepts (POCs), and solution walkthroughs at public sector engagements to *50+* government agencies and industry partners, helping technical and non-technical stakeholders evaluate and adopt 
  #link("https://github.com/GovTechSG/oobee")[Oobee], 
  #link("https://www.oobee.tech.gov.sg/")[Oobee Web], 
  and Oobee AI for automated accessibility triage and compliance in their workflows.
- Spearheaded the system design and development of Oobee AI, an AI-powered accessibility assistant that interprets Oobee Reports and generates production-ready accessible solutions using Python and *Microsoft Azure AI Foundry*, leveraging NLP, fine-tuning with RAG (LangChain, LangSmith, Pinecone) and quality validation via automated evals pipelines.
- Oobee AI increased WCAG compliance across Singapore government websites by *\~15%*, reducing manual interpretation effort by *\~50–60%*, and saving *\~10,000+* public-officer hours, with estimated cost savings of *\~USD\$2M+* over *Q4, 2025*.

#work(
  company: "GovTech Singapore",
  dates: dates-helper(start-date: "May 2025", end-date: "Sep 2025"),
  title: "Software Engineer Intern",
  location: "Singapore",
)
- Supported the end-to-end full-stack and AI development of #link("https://www.oobee.tech.gov.sg/")[Oobee Web], an open-source web accessibility scanning platform that automates WCAG compliance checks for software teams, adopted by *98* government agencies to scan *800K+* pages and identify *11M+* accessibility barriers as of *Q3, 2025* using React, Node.js, TypeScript, JavaScript, REST APIs, WebSockets, AWS (EC2, S3, ECS, SQS, ECR, RDS, CloudFront), Terraform, Cloudflare, Amplitude, Hugging Face, Ollama, Pinecone etc.
/* - Partnered with cross-functional teams to drive #link("https://www.oobee.tech.gov.sg/")[Oobee Web] adoption across 98 agencies. Contributed to product strategy by refining user flows for 11M+ accessibility issues.
- Developed accessible React interfaces and secure Node.js scanning pipelines (REST/WebSocket). Optimized distributed systems to reduce report latency by 20–25%\*, ensuring real-time performance.
- Architected scalable AWS solutions (Terraform, EC2, RDS) with robust security protocols. Improved platform reliability by 30%\* through automated CI/CD and monitoring. */

#work(
  company: "Stealth Startup",
  dates: dates-helper(start-date: "Jan 2025", end-date: "Apr 2025"),
  title: "Member of Technical Staff Intern",
  location: "San Francisco, CA",
)
- Signed NDA. A Fintech startup optimizing low-latency payment networks for NASDAQ & NYSE, using C++, Go, Spring Boot, Kafka, and Redis.


#let accent-color = rgb("#26428b")
#v(-13pt)
#align(center)[
  #{
    show link: it => it
    show underline: it => it.body
    
    link("https://" + linkedin)[
      #box(
        fill: gradient.linear(rgb("#0077b5"), rgb("#4e9cd6"), angle: 0deg),
        stroke: 1.5pt + rgb("#69a1e0"),
        radius: 50pt,
        inset: (x: 0.5em, y: 0.10em),
      )[
        #stack(
          dir: ltr,
          spacing: 0.6em,
          align(horizon)[#box(height: 1.5em, fa-linkedin-in(fill: white))],
          align(horizon)[#text(fill: white, weight: "regular", font: "Arial")[View complete work history]],
          align(horizon)[#box(height: 0.9em, fa-external-link-alt(fill: white))]
        )
      ]
    ]
  }
]

#v(-12pt)
== Projects

/* #project(
  name: "abc",
  // Role is optional
  role: "Co-developer",
  // Dates is optional
  dates: dates-helper(start-date: "Nov 2023", end-date: "Present"),
  // URL is also optional
  url: "hyperschedule.io",
)
- Maintain open-source scheduler used by 7000+ users at the Claremont Consortium with TypeScript, React and MongoDB
  - Manage PR reviews, bug fixes, and coordinate with college for releasing scheduling data and over \$1500 of yearly funding
- Ensure 99.99% uptime during peak loads of 1M daily requests during course registration through redundant servers */

/* #project-neurotune(
  name: "NeuroTune",
  tech: "Unity, C#, AI, Machine Learning, HCI",
  steam: "https://steamcommunity.com/games/714010/announcements/detail/6470072677790935150",
  paper: "https://www.thehansong.com/assets/paper/NeuroTune_Paper.pdf",
  github: "https://github.com/thehansong/NeuroTune",
  youtube: "https://youtu.be/4m7v8S-D6N8"
)
- Pitched to and adopted by Statespace (creators of #link("https://store.steampowered.com/app/714010/Aimlabs/")[AimLabs]) as Adaptive Tasks; integrated in September 2024, reaching a global player base of *40M+ users*.
- Developed NeuroTune, an AI-powered FPS aim trainer in Unity, C\# that adapts target size, spawn, and timing in real-time based on player performance to deliver personalized training in a 3D environment.
*/

#project-neurotune(
  name: "NeuroTune",
  tech: "Unity, C#, AI, Machine Learning, HCI",
  steam: "https://steamcommunity.com/games/714010/announcements/detail/6470072677790935150",
  paper: "https://www.thehansong.com/assets/paper/NeuroTune_Paper.pdf",
  github: "https://github.com/thehansong/NeuroTune",
  youtube: "https://youtu.be/4m7v8S-D6N8"
)
- Pitched and demoed NeuroTune’s *proof of concept (POC)*, an AI-powered FPS aim trainer built in Unity (C\#) to Statespace (creators of #link("https://store.steampowered.com/app/714010/Aimlabs/")[AimLabs]) founders in Seattle, WA, translating a market gap in personalized training into measurable product value. The initiative secured a *technical win*, shipped to production in September 2024, scaled to *\~40M+ users* with *\~2.5M+ Monthly Active Users (MAU)*, and generated *\~USD\$1.5M+* in incremental revenue in *Q4, 2024*.

== Leadership

#Leadership(
  activity: "Google Developer Student Clubs (GDSC) | SIT Geeks",
  dates: dates-helper(start-date: "Jan 2023", end-date: "Feb 2024"),
)
- As Technical Lead, I hosted and led *10+* hands-on technical workshops for over *\~1,000+* students across 
  #link("https://www.linkedin.com/posts/thehansong_python-datascience-techforgood-activity-7104795440499331072-R0HL")[Python], 
  #link("https://www.linkedin.com/posts/thehansong_figma-figmaworkshop2024-designthinking-activity-7156435727944220672-Z8Kr")[Figma],
  Git/GitHub, AWS, Google Firebase, Google Cloud, and AI technologies and how to apply them in real-world scenarios!
- As External Development Lead, partnered with internal stakeholders and industry partners such as *Google*, *Amazon*, *Workato*, and others to design technical programs, pitching value propositions to secure *\~USD\$23K+* in sponsorships.

/* #certificates(
  name: "OSCP",
  issuer: "Offensive Security",
  // url: "",
  date: "Oct 2024",
) */

== Skills
- *Programming Languages*: Python, C/C++, C\#, Go, TypeScript, JavaScript, HTML/CSS, SQL
- *Technologies*: LLMs, LangChain, RAG, Prompt Engineering, Fine Tunning, Azure Foundary, Vector DB, LLM-as-a-judge
