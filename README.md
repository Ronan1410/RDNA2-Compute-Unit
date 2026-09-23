---
layout: post
title: 'RDNA2 Based Compute Unit'
description: 'This project aims to implement the scalar ALU in compliance with RDNA2 ISA.  The RDNA2 ISA is found in the commercial GPUs of AMD which comprises of the Radeon RX6000 series of GPUs. The implemented ALU can run all the supported instruction types as documented in the RDNA2 ISA.'
categories: diode
thumbnail: 'thumbnail.jpg'
year: 2022
gmeet: 'https://meet.google.com/stj-pqqk-qum'
---

## Objectives
- Implementing the Scalar ALU with complete support for all the flags as specified by the RDNA2 ISA.
- Implementing the Vector ALU with complete support for all the flags as specified by the RDNA2 ISA
- Combining the 2 ALUs to implement the Compute Unit
- Setting up test benches to verify out implementation

## Description
This project aims to design a 'Compute Unit' based on the RDNA2 ISA for AMD GPUs. RDNA2 is the architecture of AMD's RX6000 series GPUs. Having a simple hardware model for reference can enable parallel programmers to work on RDNA2 based GPUs more efficiently.

RDNA2 is the successor to the RDNA microarchitecture. It was first publically announced in earl 2020 with a release in Q4 2020. According to statements from AMD, RDNA2 would be a "refresh" of the RDNA architecture.

RDNA is the codename for a GPU microarchitecture and accompanying instruction set architecture developed by AMD. It is the successor to their Graphics Core Next (GCN) microarchitecture/instruction set. The first product lineup featuring RDNA was the Radeon RX 5000 series of video cards, launched on July 7, 2019. The architecture is also planned to be used in mobile products. It is manufactured and fabricated with TSMC's 7 nm FinFET graphics chips used in the Navi series of AMD Radeon graphics cards.


## References

- The Morgan Kaufmann Series in Computer Architecture and Design David A. Patterson, John L. Hennessy - Computer Organization and Design RISC-V Edition\_ The Hardware Software Interface (2020, Morgan Kaufmann)

- [Chris Terman. 6.004 Computation Structures. Spring 2017. Massachusetts Institute of Technology: MIT OpenCourseWare, https://ocw.mit.edu. License: Creative Commons BY-NC-SA.](https://ocw.mit.edu/courses/6-004-computation-structures-spring-2017/pages/syllabus/)

- [RDNA2_Shader_ISA_November2020](https://developer.amd.com/wp-content/resources/RDNA2_Shader_ISA_November2020.pdf)