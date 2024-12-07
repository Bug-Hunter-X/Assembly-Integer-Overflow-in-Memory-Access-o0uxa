# Assembly Integer Overflow Vulnerability

This repository demonstrates a potential integer overflow vulnerability in assembly code. The `bug.asm` file contains code with the vulnerability, while `bugSolution.asm` provides a corrected version.

**Vulnerability:**
The primary issue lies in the memory address calculation: `mov eax, [ebx+esi*4+0x10]`.  Without proper bounds checking,  values in registers `ebx` and `esi` could combine with the offset `0x10` to create an address exceeding the allowed range, leading to unpredictable behavior (crash, data corruption, security exploits). 

**Mitigation:**
The corrected code in `bugSolution.asm` employs range checks before performing the memory access calculation. This prevents attempts to access memory outside of the program's allocated space.

**Note:** The specific mitigation strategy may vary depending on the target architecture, operating system, and program requirements.  Robust error handling and defensive programming are crucial for avoiding these kinds of vulnerabilities.