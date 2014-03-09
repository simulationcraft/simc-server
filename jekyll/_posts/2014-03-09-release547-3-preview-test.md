---
title: SimulationCraft 5.4.7, release 2
layout: posts
tags:
---
* [Windows 32bit](/release/simc-547-2-win32.zip)
* [Windows 64bit](/release/simc-547-2-win64.zip)
* [Mac OS X 10.6+ (CLI 32/64bit, GUI 64bit)](/release/simc-547-2-osx-x86.dmg)
* [Ubuntu 12.04/13.10](https://launchpad.net/~simulationcraft/+archive/simulationcraft)
* [Source code](/release/simc-547-2-source.zip)
* If you wish to run Simulationcraft on other (Linux) distributions, follow the [build instructions](http://code.google.com/p/simulationcraft/wiki/HowToBuild)
<br>
## Release notes
* #### General
    * **Add "dps_plot_negative" option.**
    * **Implement new Theck-Meloree-Index formulas. Enabled with "new_tmi=1"**
    * Add end-of-simulation timestamp to text report. Fixes [Issue 1906](https://code.google.com/p/simulationcraft/issues/detail?id=1906)
* #### Graphical User Interface
    * Fix Pause! button not working for scale factor / plot / reforge plot simulations
    * Fix scale factor delta display when **center_scale_delta=1**. Fixes [Issue 1879](https://code.google.com/p/simulationcraft/issues/detail?id=1879)
* #### Druid
    * Fix druid bear form melee attack school
    * Fix Berserk (bear) resetting Lacerate cooldown
* #### Monk
    * Add Stance of the Sturdy Ox stamina scaling