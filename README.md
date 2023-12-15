# Greatest Common Divisor (GCD) System Design

Welcome to the repository for our digital system design project, where we are designing a simple Greatest Common Divisor (GCD) system. This project follows the RTL (Register-Transfer Level) to GDS (Graphic Data Stream) flow.

## Design Flow

The design flow of this project can be broken down into the following steps:

1. **RTL Design**: We start by defining the behavior of the GCD system at the register-transfer level. This involves describing how data is transferred and manipulated between registers, and how control logic dictates the flow of data.

2. **Functional Verification**: After the RTL design is complete, we verify its functionality. This involves simulating the RTL design with various test vectors to ensure it behaves as expected.

3. **Synthesis**: The verified RTL design is then synthesized into a gate-level representation using a standard cell library. This process transforms the high-level design into a design that can be fabricated on a chip.

4. **Place and Route (P&R)**: During this step, the synthesized design is placed onto the chip and the interconnections are routed. This involves a complex optimization process to meet design constraints such as timing, power, and area.

5. **Physical Verification**: The placed and routed design is then verified for manufacturability, reliability, and robustness. This includes checks for design rule violations, layout vs schematic (LVS) mismatches, and reliability issues.

6. **GDSII Generation**: Finally, the verified physical design is converted into a GDSII file, which is a standard format for IC layout data exchange. This file is used for mask generation and subsequent fabrication.

## Getting Started

To get started with this project, clone the repository and navigate to the RTL design files. Detailed instructions for each step of the design flow are provided in their respective directories.

## Design Flow

- **RTL Design**: Define the behavior of the system at the register-transfer level.
- *Data Path*:
- 
- ![Adobe Scan 12 Dec 2023_1](https://github.com/srikanta171/Greatest_common_Divisor/assets/58320116/3b69e628-f117-480c-927b-32db39e26e05)

 *Control Path*:

 ![Adobe Scan 12 Dec 2023 (1)_3](https://github.com/srikanta171/Greatest_common_Divisor/assets/58320116/f03eb32b-ddba-484a-b958-a608e8e3e1c2)

- **Functional Verification**: Verify the functionality of the RTL design through simulation.
- 
- ![gcd](https://github.com/srikanta171/Greatest_common_Divisor/assets/58320116/4b02da5e-2860-41fc-8454-fc3b2ef064ff)

- **Synthesis**: Transform the RTL design into a gate-level representation.
- **Place and Route (P&R)**: Place the design onto the chip and route the interconnections.
- **Physical Verification**: Verify the placed and routed design for manufacturability, reliability, and robustness.
- **GDSII Generation**: Convert the verified physical design into a GDSII file for mask generation and fabrication.





















We hope you find this project interesting and educational. Happy designing!

