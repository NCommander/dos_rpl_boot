# NetWare Server RPL Instructions

This is a basic document describing setting up Novell Netware for RPL booting. In theory, this process should be the same across all major versions of NetWare from 3+ later, but has only been tested on NetWare 3.12.

This process assuems MS-DOS 6.2, however, the attached batch files should work with MS-DOS 5+ and DR-DOS 5+. If tested, please let me know. FreeDOS has not been tested for RPL boot. Some experience with setting up NetWare is recommended, for a brief primier, see my video and write-up on NetWare in general:

YouTube: https://www.youtube.com/watch?v=jbvWQu4k4iA
Write-up: https://soylentnews.org/article.pl?sid=20/05/24/0644226

This guide was written for my video guide talking about diskless NetWare, a link will be added here as soon as its found.

## Setup Requirements

Unlike PXE, RPL is a layer 2 protocol, and it's also specific to network topology; RPL for Token Ring is somewhat different than for Ethernet. NetWare and IBM also used the term RPL (and RIPL) for an older IPX based network booting system over IPX; this booting mechanism used IPX 802.3 frames; if someone can provide me with an example boot ROM and hardware, I'll document it, otherwise, I'll document the later RPL boot method.

RPL also depends on IPX for handling access for NET$DOS as the second stage bootloader. Annoyingly, it also requires a specific IPX frame type, in this case, 802.2. For those unfamiliar, IPX comes in four variations, ETHERNET_II, 802.2, 802.3, and RAW (names vary across vendors), and all nodes on the network have to use the same frame type to work. Ethernet networks work with all frames, but your topology will depend on what frame you're using.

I do recommend using ETHERNET_II for Ethernet in general as it's what most software uses by default in my experience. It is possible to bind multiple frame types to an interface in AUTOEXEC.NCF. Most of the RPL based instructions are in the DOS/Windows Workstation Guide manual.

This example has AMD PCNet drivers hardcoded into scripts (PCNTNW) as nearly every VM supports this network adapter. If you're using a different adapter on real hardware, you'll have to make some changes; generally replacing PCNTNW with whatever the device driver is called.

## DOSGEN Batch Files

