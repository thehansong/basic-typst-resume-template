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
  degree: "Bachelor's of Science, Computer Science in Real-Time Interactive Simulation (RTIS)",

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
  dates: dates-helper(start-date: "May 2024", end-date: "Present"),
  title: "AI Solutions Engineer",
  location: "Singapore (Remote)",
)
- Drove technical wins through solution design of Agentic AI pipelines (Python, LangChain, RAG) across AWS and GCP. Led 4 engagements, validating AI architectures to accelerate digital transformation.
- Collaborated with customers on multilingual prompt test suites (200+ cases), identifying localisation gaps. Contributed to product strategy by communicating feedback to improve response quality by 10–15%\*.
- Designed intelligent, scalable solutions for multimodal reasoning on GCP, supporting 3 regional initiatives. Communicated customer feedback to inform competitor strategies and drive product updates.

#work(
  company: "GovTech Singapore",
  dates: dates-helper(start-date: "Dec 2023", end-date: "Mar 2024"),
  title: "AI Engineer Intern",
  location: "Singapore",
)
- Led 10+ technology demonstrations (POCs) at major public sector events, engaging 50+ agencies. Validated product performance for stakeholders, driving adoption of automated accessibility/AI solutions.
- Spearheaded Oobee AI development (Python, RAG, Open Source LLMs) to automate accessibility workflows. Designed intelligent solutions that reduced manual effort by 50–60%\* via code-ready fixes.
- Architected scalable GenAI inference on AWS (SageMaker), supporting multi-quarter rollouts. Guided partners on best practices for scalability, processing 500 scans/week with 15%\* higher accuracy.

#work(
  company: "GovTech Singapore",
  dates: dates-helper(start-date: "Dec 2023", end-date: "Mar 2024"),
  title: "Full-Stack Software Engineer Intern",
  location: "Singapore",
)
- Partnered with cross-functional teams to drive #link("https://www.oobee.tech.gov.sg/")[Oobee Web] adoption across 98 agencies. Contributed to product strategy by refining user flows for 11M+ accessibility issues.
- Developed accessible React interfaces and secure Node.js scanning pipelines (REST/WebSocket). Optimized distributed systems to reduce report latency by 20–25%\*, ensuring real-time performance.
- Architected scalable AWS solutions (Terraform, EC2, RDS) with robust security protocols. Improved platform reliability by 30%\* through automated CI/CD and monitoring.

#let accent-color = rgb("#26428b")

#align(center)[
  #{
    show link: it => it
    show underline: it => it.body
    
    link("https://" + linkedin)[
      #box(
        fill: gradient.linear(rgb("#0077b5"), rgb("#4e9cd6"), angle: 0deg),
        stroke: 1.5pt + rgb("#69a1e0"),
        radius: 50pt,
        inset: (x: 1.0em, y: 0.4em),
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

#project-neurotune(
  name: "NeuroTune",
  tech: "Unity, C#, AI, Machine Learning, HCI",
  steam: "https://steamcommunity.com/games/714010/announcements/detail/6470072677790935150",
  paper: "https://www.thehansong.com/assets/paper/NeuroTune_Paper.pdf",
  github: "https://github.com/thehansong/NeuroTune",
  youtube: "https://youtu.be/4m7v8S-D6N8"
)
- Pitched to and adopted by Statespace (creators of #link("https://store.steampowered.com/app/714010/Aimlabs/")[AimLabs]) as Adaptive Tasks; integrated in September 2024, reaching a global player base of *40M+ users*.
- Developed NeuroTune, an AI-powered FPS aim trainer in Unity, C\# that adapts target size, spawn, and timing in real-time based on player performance to deliver personalized training in a 3D environment.


== Leadership

#Leadership(
  activity: "Capture The Flag Competitions",
  dates: dates-helper(start-date: "Jan 2021", end-date: "Present"),
)
- Founder of Les Amateurs (#link("https://amateurs.team")[amateurs.team]), currently ranked \#4 US, \#33 global on CTFTime (2023: \#4 US, \#42 global)
- Organized AmateursCTF 2023 and 2024, with 1000+ teams solving at least one challenge and \$2000+ in cash prizes
  - Scaled infrastructure using GCP, Digital Ocean with Kubernetes and Docker; deployed custom software on fly.io
- Qualified for DEFCON CTF 32 and CSAW CTF 2023, two of the most prestigious cybersecurity competitions globally

// #Leadership(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

== Skills
- *Programming Languages*: JavaScript, Python, C/C++, HTML/CSS, Java, Bash, R, Flutter, Dart
- *Technologies*: React, Astro, Svelte, Tailwind CSS, Git, UNIX, Docker, Caddy, NGINX, Google Cloud Platform
