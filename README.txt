                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


http://www.thingiverse.com/thing:1889761
Mini Drawers Ultimate by zeropage is licensed under the Creative Commons - Attribution - Non-Commercial - Share Alike license.
http://creativecommons.org/licenses/by-nc-sa/3.0/

# Summary

__What is this thing?__
This is a remix of TrevM's [Mini Drawers](http://www.thingiverse.com/thing:1621667 "Mini Drawers"). The original design is great but I needed some improvements. Thankfully, TrevM provides the *.scad-files, so the required changes could be made using OpenSCAD:

-     The runners did not fit perfectly in the slots. I think it depends on your 3D printer how snuggly these pieces fit together. I added a global variable "runnersDiameter" to the corresponding *.scad-files so adjusting the runner's diameters is quiet easy. I was fine with 2.85mm.

-   To prevent the drawers from falling out when pulling too far I added a small stopper on the top/front inside of the house.

-   Added magnet holes to the house's and drawer's backside. While the aforementioned stopper prevents pulling a drawer too far, the magnets prevent the drawer from sliding when a house is moved or tilted.

-   The handles were too delicate for my fingers so I made them oval and increased their protrusion.

-   To minimize elephant feet I added chamfers to the bottom of the drawer and handle using the [Chamfered primitives for OpenSCAD](https://github.com/SebiTimeWaster/Chamfers-for-OpenSCAD/ "Chamfered primitives for OpenSCAD") library by TimeWaster.

-  
Finally, a plethora of different sized houses and drawers is available. If the ones provided are not enough, read below in the Logbook how to create arbitrarily sized boxes.

See the chapter below for print instructions. And see the chapter post-printing on instructions for mounting the magnets (I used magnets similar to [these](https://www.aliexpress.com/item/50Pcs-8x1-Neodymium-Magnet-Disc-Permanent-N35-NdFeB-Small-Round-Super-Powerful-Strong-Magnetic-Magnets-8mm/32866508617.html) from AliExpress.)

Tell me if you need help or something specific!

__ __

__Logbook__
- *26.11.2017* -- Added new sizes 2x3 and the whole 3x1 .. 3x3 series. Mission complete.
- *09.10.2017* -- Reworked the filenames. Added missing houses/drawers like the 2x1 magnet versions. Added new sizes 1x3 and 2x2.
Right now, we have 1x1, 1x2, 1x3 as well as 2x1 and 2x2 houses and drawers each as a magnet and non-magnet version.✓ Soon I will add 2x3 as well as the whole 3x1..3 series, so there will be some big badda boom boxes available. For even bigger sizes or houses and drawers with slot-in magnets please use the Scad-files to produce the required STLs (see next Log-entry).

- *09.10.2017* -- Finally! Added three Scad-files that allow you to create arbitrarily sized houses and drawers with or without magnets *and* you can choose whether you have the standard glue-in magnet slots or -new!- drop-in magnet slots.
_All praise has to go to [@ofloveandhate](https://www.thingiverse.com/ofloveandhate/about) who rewrote the original code to enable the aforementioned parametrizations. Dani, thanks a lot!_
Please note that this is work in progress and that you need to use OpenScad to create your own STL-files!
How to: Use "assembly.scad" to produce a house and an accompanying drawer at the same time. Very important: If you choose drop-in magnets, you *must* edit the "house.scad" and uncomment a couple of lines of code. Read the comments carefully.

- *24.05.2017* -- Added a 1x1 drawer with three slots (magnet and non-magnet version).

- *09.05.2017* -- Added a 2x1 house and drawer. Thanks to Elerion for beta printing! And a good tip from Elerion for those whose printers produce drawers that are too tightly fitting: Reduce the drawers' sizes by 1% on the X and Z axes. Magnet versions of the 2x1 set tbd.

- *23.01.2017* -- My drawers glided too easily in their houses with the result that they tended to slide open when my drawer phalanx was (accidentally) touched. Or, much worse, nuts, screws, and other stuff got spilled over my table. Since I already printed a lot of houses and drawers, I underwent the pain to drill a plethora of 8mm holes to glue 8mm x 1mm magnets to the backside of the houses and drawers. See [this video](https://youtu.be/GgcQiEWDeZY) how the houses/drawers with magnets work and look like.
To ease things for the future, all MD Ultimate files are now available in two versions: With and without holes for 8mm x 1mm magnets! (I used [these](https://www.aliexpress.com/item/50Pcs-Silver-N35-Super-Strong-Round-Disc-8mm-X-1mm-Rare-Earth-Neodymium-magnet/32704942674.html) magnets from AliExpress.)

- *31.12.2016* -- A double sized drawer with divider was missing. masterman274 was so kind to provide [this one](http://www.thingiverse.com/thing:2006275). Thank you! (Please note that I added an according drawer in the meantime while dealing with the magnet stuff; cf. above.)

-
*15.11.2016* -- Added a drawer with two slots.

 



# Print Settings

Printer Brand: Ultimaker
Printer: Ultimaker 2
Resolution: 0.16mm
Infill: 0%

Notes: 
Some notes on printing: I tried a lot of different settings (in Cura) to optimise quality and print speed. My best settings with a 0.4mm nozzle so far:

- Layer height 0.16mm
- Shell thickness 0.4 mm
- Bottom/top thickness 0.8mm
- Fill density 0% (yes, zero!)
- Print speed 70 mm/s
- no support, no brim

A word on zero infill: Since neither the houses nor the drawers will -in most cases- experience a lot of stress they, thus, do not need to be rock solid. Using zero infill with a shell thickness of 0.4mm is kind of spiralizing the inner and outer walls and only filling the top and bottom. This results in reduced printing times and a sufficient strength.

# Post-Printing

## How to attach the magnets

If you printed houses and drawers with mounting holes for magnets you might ask yourself how to attach the magnets to these holes.

I put a drop of super glue on the rim of a magnet, laid it down on my workbench, then imposed the house (or drawer) on the magnet. This way, the magnet and the house or drawer will be on level. Take care that leaking super glue may glue your house or drawer to the workbench. To avoid this I moved the house or drawer in a circular motion. Just long enough until the magnet was sufficiently sticking to the house or drawer.

Another option might be to put a drop of hot glue on the magnet, then impose the house or drawer on the magnet. Hot glue allows minor corrections by gently heating up the glue. Nonetheless, take care not to take too much hot glue since you do not want the glue to get in the way with the drawer.