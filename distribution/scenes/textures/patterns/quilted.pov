// This work is licensed under the Creative Commons Attribution 3.0 Unported License.
// To view a copy of this license, visit http://creativecommons.org/licenses/by/3.0/
// or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View,
// California, 94041, USA.

// Persistence Of Vision raytracer sample file.
// Quilted pattern example
//
// -w320 -h240
// -w800 -h600 +a0.3

#version 3.7;

global_settings { assumed_gamma 1.0 }

#include "colors.inc"

#declare T1=
 texture{
   pigment{
     quilted color_map{[0.0 Black][0.1 Black][0.9 White][1.0 White] }
     control0 1 control1 1
     scale 0.3
   }
 }

#declare T2=
 texture{
   pigment{White}
   normal{
     quilted 0.4
     control0 1 control1 1
     scale 0.3
   }
   finish{phong 1 phong_size 400  reflection{ 0.1 }}
 }

#include "pignorm.inc"
