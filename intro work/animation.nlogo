to setup 
  crt 6 
  [set color 29 
  set size 10
  ask turtle 1 [set xcor -12 ]
  ask turtle 2 [set xcor -6]
  ask turtle 4 [set xcor 6]
  ask turtle 5 [set xcor 12]]
end
to mv
  ca
  setup
  ask patches [set pcolor white]
  ask turtle 1 [set shape "amber-1.1"]
  ask turtle 2 [set shape "sulli-1.1"]
  ask turtle 3 [set shape "krystal-1.1"]
  ask turtle 4 [set shape "victoria-1.1"]
  ask turtle 5 [set shape "luna-1.1"]
  ask turtle 0 [set shape "car" set color 125 set size 20 set ycor 4]
;pose

wait 1
ca
  ask patches [set pcolor pink]
  crt 3
  ask turtle 0 [set color 125 
    set shape "tank"
    set size 20
    set xcor -8
    set heading 45]
  ask turtle 1 [set heading 0
    set shape "title-2"
    set size 15
    setxy 7 -10]
  ask turtle 2 [set heading 0
    set shape "title"
    set size 20
    set xcor 5
    wait .5
  set size 25
  wait .2
  set size 20
  wait .2
  set size 25
  wait .2
  set size 20
  wait 1]
;title screen

 ca
 ask patches [set pcolor white]
 crt 2
 ask turtle 0 [set shape "car" set color 125 set size 35 ]
 ask turtle 1 [set heading 0
  set color 29
  set size 40
  set ycor 2
  set shape "victoria-1.2"
  wait .5
  set shape "victoria-1.3"
  wait .2
  set shape "victoria-1.4"
  ]
 wait .1
 ;vic solo

  ct
  setup
  ask turtle 1 [set shape "krystal-1.2"]
  ask turtle 2 [set shape "amber-1.2"]
  ask turtle 4 [set shape "sulli-1.2" set xcor 8]
  ask turtle 3 [set shape "luna-1" set xcor 1]
  ask turtle 0 [set shape "car" set color 125 set size 25 set ycor 4 ]
      ask turtle 5 [set shape "victoria-1.5"  
    set size 20 set xcor 0
    set shape "victoria-1.5" 
    wait .08
    set shape "victoria-1.6"
    wait .08
     set shape "victoria-1.7"
    wait .08
    set shape "victoria-1.8"
    wait .08
    set shape "victoria-1.9"
    wait .08 
    set shape "victoria-1.5" 
    wait .08
    set shape "victoria-1.6"
    wait .08
    set shape "victoria-1.7"
    wait .15
    set shape "victoria-1.8"
    wait .08
    set shape "victoria-1.9"
    wait .08 
    set shape "victoria-1.5" 
    wait .2]
ask (turtle-set turtle 1 turtle 2  turtle 3 turtle 4) [set xcor (xcor + 1)]
ask turtle 5 [set xcor (xcor - 2) set ycor (ycor + 1) wait .1 set xcor (xcor - 2) set ycor (ycor - 1)] 
wait .2
ask (turtle-set turtle 1 turtle 2  turtle 3 turtle 4) [set xcor (xcor + 1)]
wait 1
;vic turn-turn-move

ct
crt 1
ask turtle 0 [set heading 0
  set color 29
  set size 50
  set ycor 4
  set shape "krystal-3.1"
  wait .2 
  set shape "krystal-3.2"
  wait .2 
  set shape "krystal-3.1"
  wait .2
  set shape "krystal-3.2"
  wait .2
  set shape "krystal-3.1"
  wait .2
  set shape "krystal-3.2"
  wait .2
  set shape "krystal-3.1"]
wait .25
;krystal solo

ct
setup
ask turtle 0 [set shape "car" set color 125 set size 25 set ycor 4  ]
ask turtle 1 [set shape "victoria-1.10" set size 15]
ask turtle 2 [set shape "krystal-1.3"]
ask turtle 3 [set shape "amber-1.3" set size 10]
ask turtle 4 [set shape "sulli-1.3"]
ask turtle 5 [set shape "luna-1.3"]
ask turtle 3 [set shape "amber-1.4" set size 11
  wait .5
  set shape "amber-1.5" set size 12
  wait .5
  set shape "amber-1.4" set size 13
  wait .2
  set shape "amber-1.6"
  wait .2
  set shape "amber-1.7" set size 14]
wait .1
;amber foward-left-up

ct
setup
ask (turtle-set turtle 4 turtle 5) [die]
ask turtle 0 [set shape "car" set color 125 set size 30 setxy -2 4  ]
ask turtle 1 [set shape "krystal-1.3" set size 20]
ask turtle 3 [set shape "amber-1.8" set xcor 4 set size 30 set ycor -4]
ask turtle 2 [set shape "sulli-1.3" set xcor 10 set size 20]
wait .5
ask turtle 3 [ set shape "amber-1.9"]  wait .2
;amber left

ct
crt 1
[ set color 29 set size 20 set ycor -6 set shape "amber-1.10"
  wait .2
  set shape "amber-1.11"]
wait .5
crt 1
ask turtle 1[set heading 0 set color pink set shape "heart" setxy .25 -.5 
  wait .025 set size (size + 1)
  wait .025 set size (size + 1)]
 wait .025
;amber right-blow

ct
crt 1
[set heading 0 set color 29 set size 30 set xcor 6 
  set shape "amber-3.1"
  wait .2
  set shape "amber-3.2"
  wait .2
  set shape "amber-3.1"
  wait .2
  set shape "amber-3.2"
  wait .2
  set shape "amber-3.1"
  wait .2
  set shape "amber-3.2"]
wait .25
;amber solo

ct
crt 3
ask turtle 0 [set shape "sulli-2.1" set ycor -2 set size 23 set color 29]
ask turtle 1 [set shape "krystal-2.1" setxy -10 -6 set size 25 set color 29]
ask turtle 2 [set shape "luna-2.1" setxy 8 -6 set size 25 set color 29]
wait .2
ask turtle 0 [set shape "sulli-2.2"]
ask turtle 1 [set shape "krystal-2.2"]
ask turtle 2 [set shape "luna-2.2"]
wait .2
ask turtle 0 [set shape "sulli-2.3"
  set shape "sulli-2.4"]
ask turtle 1 [set shape "krystal-2.3"]
ask turtle 2 [set shape "luna-2.3"]
wait .5
;krystal-sulli-luna

ct
crt 1
[set heading 0
  set color 29
  set size 40
  set shape "luna-3.1"
  wait .2
  set shape "luna-3.2"
  wait .2
  set shape "luna-3.1"
  wait .2
  set shape "luna-3.2"
  wait .2
  set shape "luna-3.1"
  wait .2
  set shape "luna-3.2"
  wait .2
 set shape "sulli-3.1" 
 set ycor -4
 wait .2 
 set shape "sulli-3.2"
 wait .2
 set shape "sulli-3.1"
 wait .2
 set shape "sulli-3.2"
 wait .2
 set shape "sulli-3.1"
 wait .2
 set shape "sulli-3.2"
 wait .25 ]
;luna solo sulli solo

ct
setup
  ask turtle 0 [set shape "car" set color 125 set size 20 set ycor 4]
  ask turtle 5 [set shape "amber-1.12" set size 15]
  ask turtle 3 [set shape "sulli-1.4" set size 15]
  ask turtle 2 [set shape "krystal-1.4"set xcor -6 set size 10]
  ask turtle 4 [set shape "victoria-1.11" set size 10]
  ask turtle 1 [set shape "luna-1.4" set size 15]
  wait .2
  ask turtle 5 [set shape "amber-1.13"]
  ask turtle 3 [set shape "sulli-1.5"]
  ask turtle 2 [set shape "krystal-1.5"]
  ask turtle 4 [set shape "victoria-1.12"]
  ask turtle 1 [set shape "luna-1.5"]
  wait .2
  ask turtle 5 [set shape "amber-1.14"]
  ask turtle 3 [set shape "sulli-1.6"]
  ask turtle 2 [set shape "krystal-1.6"]
  ask turtle 4 [set shape "victoria-1.13"]
  ask turtle 1 [set shape "luna-1.6"]
  wait .2
  ask turtle 5 [set shape "amber-1.13"]
  ask turtle 3 [set shape "sulli-1.5"]
  ask turtle 2 [set shape "krystal-1.5"]
  ask turtle 4 [set shape "victoria-1.12"]
  ask turtle 1 [set shape "luna-1.5"]
  wait .2
  ask turtle 5 [set shape "amber-1.15"]
  ask turtle 3 [set shape "sulli-1.7"]
  ask turtle 2 [set shape "krystal-1.7"]
  ask turtle 4 [set shape "victoria-1.14"]
  ask turtle 1 [set shape "luna-1.7"]
  wait .1
;right-left-right-left  
  
ct
crt 1
[set heading 0
  set color 29
  set size 40
  set shape "victoria-3.1"
  wait .2
  set shape "victoria-3.2"
  wait .2
  set shape "victoria-3.1"
  wait .2
  set shape "victoria-3.2"
  wait .25]
;vic solo

ct
crt 1
ask turtle 0 [set heading 0
  set color 29
  set shape "krystal-3.7"
  set size 30
  wait .3
  set size 50
  set ycor 4
  set shape "krystal-3.4"
  wait .2 
  set shape "krystal-3.3"
  wait .2 
  set shape "krystal-3.4"
  wait .2
  set shape "krystal-3.3"
  wait .1
  set shape "krystal-3.5"
  wait .1
  set shape "krystal-3.6"
  wait .1
  set shape "krystal-3.3"]
wait .25
;krystal solo

ct 
setup
ask turtle 0[set shape "car" set color 125 set size 20 set ycor 4]
ask turtle 1[set shape "luna-1.9"]
ask turtle 2[set shape "sulli-1.9"]
ask turtle 3[set shape "krystal-1.9"]
ask turtle 4[set shape "victoria-1.16"]
ask turtle 5[set shape "amber-1.17"]
wait .2
ask turtle 1[set shape "luna-1.8"]
ask turtle 2[set shape "sulli-1.8"]
ask turtle 3[set shape "krystal-1.8"]
ask turtle 4[set shape "victoria-1.15"]
ask turtle 5[set shape "amber-1.16"]
wait 1

ct
crt 30
[set color white
  set label-color black
  set shape "balloon" 
  set color 97 
  set heading 0 
  set size 9
  setxy ((random 36) - 18) ((random 36) - 18)
  ask turtle 29 [set xcor 2 set ycor 4 set label "END...Couldn't make whole MV"]
  ask turtle 28 [set xcor 8 set ycor 0 set label "Original MV: http://www.youtube.com/watch?v=z-rftpZ7kCY"]]
;end  
end
@#$#@#$#@
GRAPHICS-WINDOW
210
10
701
522
18
18
13.0
1
10
1
1
1
0
1
1
1
-18
18
-18
18
0
0
1
ticks
30.0

BUTTON
33
56
119
89
Play
mv
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

amber-1
false
0
Polygon -7500403 true true 105 105 103 107 105 165 75 195 60 165 105 105
Line -16777216 false 195 165 180 210
Polygon -7500403 true true 105 105 195 105 180 210 210 300 165 300 150 240 135 300 90 300 120 210 105 105
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 120 210 90 270 142 271 150 240 158 273 210 270 180 210 135 210
Polygon -13840069 true false 105 105 195 105 180 210 120 210 105 105
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 150 240 195 240 180 211 179 208 120 209 105 240
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -7500403 true true 195 105 197 107 195 165 225 195 240 165 195 105
Line -16777216 false 200 174 209 181
Line -16777216 false 105 165 120 210
Polygon -1 true false 165 105 165 210 180 210 195 165 210 180 225 142 196 105 165 105
Polygon -1 true false 135 105 135 210 120 210 105 165 90 180 75 142 104 105 135 105

amber-1.1
false
0
Line -16777216 false 195 165 180 210
Polygon -7500403 true true 195 105 165 120 210 165 240 165 195 105
Polygon -7500403 true true 105 105 195 105 180 210 210 300 165 300 150 240 135 300 90 300 120 210 105 105
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 120 210 90 270 142 271 150 240 158 273 210 270 180 210 135 210
Polygon -13840069 true false 105 105 195 105 180 210 120 210 105 105
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 150 240 195 240 180 211 179 208 120 209 105 240
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -1 true false 165 105 165 210 180 210 195 165 210 180 225 142 196 105 165 105
Polygon -7500403 true true 73 107 103 107 103 182 103 212 79 212 88 107
Polygon -1 true false 135 105 135 210 120 210 105 165 105 180 75 180 90 105 135 105
Line -16777216 false 200 174 209 181
Polygon -7500403 true true 210 165 240 165 210 210 188 190
Line -16777216 false 104 168 104 179
Line -16777216 false 195 238 210 267
Line -16777216 false 149 244 156 270
Line -16777216 false 151 244 144 270
Line -16777216 false 105 238 90 267

amber-1.10
false
0
Polygon -13840069 true false 116 257 116 294 190 296 185 254
Line -16777216 false 195 165 180 210
Circle -7500403 true true 102 22 92
Rectangle -7500403 true true 130 105 169 124
Polygon -13840069 true false 108 124 192 122 176 270 116 270 112 132
Polygon -1 true false 116 224 113 228
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 105 75 103 37 126 12 131 19 140 5 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 194 43 193 79 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -7500403 true true 204 131 198 131 189 123 199 265 222 261 206 141
Polygon -1 true false 157 120 164 269 191 268 193 169 199 231 222 214 210 125 156 117
Polygon -1 true false 137 123 136 267 112 271 107 183 105 180 105 120 106 123 137 123
Polygon -7500403 true true 140 177 127 203 133 209 137 213 245 177 236 151
Circle -16777216 true false 236 146 28
Polygon -13840069 true false 229 175 226 159 237 147 250 177
Polygon -1 true false 100 118 102 120 100 178 130 208 145 178 100 118
Line -16777216 false 101 122 144 177
Line -16777216 false 97 176 132 210
Line -16777216 false 231 156 239 175
Line -16777216 false 107 124 137 123
Line -16777216 false 169 120 212 125
Line -16777216 false 210 127 215 153
Line -16777216 false 217 186 223 212
Line -16777216 false 107 189 111 273
Line -16777216 false 102 124 99 184

amber-1.11
false
0
Polygon -13840069 true false 116 257 116 294 190 296 185 254
Line -16777216 false 195 165 180 210
Circle -7500403 true true 102 22 92
Rectangle -7500403 true true 130 105 169 124
Polygon -13840069 true false 108 124 192 122 176 270 116 270 112 132
Polygon -1 true false 116 224 113 228
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 105 75 103 37 126 12 131 19 140 5 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 194 43 193 79 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -7500403 true true 204 131 198 131 189 123 199 265 222 261 206 141
Polygon -1 true false 157 120 164 269 191 268 193 169 199 231 222 214 210 125 156 117
Polygon -1 true false 137 123 136 267 112 271 107 183 105 180 105 120 106 123 137 123
Polygon -7500403 true true 140 177 127 203 133 209 165 210 165 105 135 105
Circle -16777216 true false 135 78 28
Polygon -13840069 true false 165 111 135 111 135 96 165 96
Polygon -1 true false 100 118 102 120 100 178 130 208 145 178 100 118
Line -16777216 false 101 122 144 177
Line -16777216 false 97 176 132 210
Line -16777216 false 136 105 163 106
Line -16777216 false 102 123 134 122
Line -16777216 false 107 186 113 273
Line -16777216 false 165 117 213 125
Line -16777216 false 210 127 220 209
Line -16777216 false 192 266 194 176
Line -16777216 false 198 230 194 174
Line -16777216 false 102 125 99 180

amber-1.12
false
0
Polygon -7500403 true true 154 248 156 301 192 301 177 229 149 247
Polygon -7500403 true true 120 225 119 263 100 300 135 300 150 270 150 210
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 120 210 118 260 149 260 149 259 150 259 190 262 180 210 135 210
Polygon -13840069 true false 106 107 196 107 181 212 121 213 106 107
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 116 229 182 228 180 212 179 209 120 210
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -7500403 true true 195 111 165 111 180 216 210 216 195 111
Polygon -1 true false 164 106 160 192 175 180 173 166 177 194 204 172 195 106 164 106
Line -16777216 false 174 166 178 193
Polygon -7500403 true true 105 105 58 132 61 197 88 197 86 150 135 135
Polygon -1 true false 135 104 136 190 117 182 109 143 87 150 71 120 104 104 135 104
Line -16777216 false 149 229 151 260

amber-1.13
false
0
Polygon -7500403 true true 155 249 157 302 187 303 182 232 150 248
Polygon -7500403 true true 120 225 110 266 100 300 130 301 138 272 150 210
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 119 209 111 258 143 260 149 229 153 258 189 261 179 209 134 209
Polygon -13840069 true false 106 107 196 107 181 212 121 213 106 107
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 114 228 180 227 178 211 177 208 118 209
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -7500403 true true 195 111 165 111 180 216 210 216 195 111
Polygon -1 true false 164 106 160 192 175 180 173 166 177 194 204 172 195 106 164 106
Line -16777216 false 174 166 178 193
Polygon -7500403 true true 105 150 58 123 61 58 88 58 86 105 135 120
Polygon -1 true false 135 104 136 190 117 182 108 150 86 145 88 105 106 108 135 104

amber-1.14
false
0
Polygon -7500403 true true 155 249 157 302 187 303 182 232 150 248
Polygon -7500403 true true 120 225 110 266 100 300 130 301 138 272 150 210
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 119 209 111 258 143 260 149 229 153 258 189 261 179 209 134 209
Polygon -13840069 true false 106 107 196 107 181 212 121 213 106 107
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 114 228 180 227 178 211 177 208 118 209
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -7500403 true true 105 111 135 111 120 216 90 216 105 111
Polygon -1 true false 136 106 140 192 125 180 127 166 123 194 96 172 105 106 136 106
Line -16777216 false 126 166 122 193
Polygon -7500403 true true 195 150 242 123 239 58 212 58 214 105 165 120
Polygon -1 true false 165 104 164 190 183 182 192 150 214 145 212 105 194 108 165 104

amber-1.15
false
0
Polygon -7500403 true true 188 148 165 165 240 165 240 135 195 135 158 118
Polygon -7500403 true true 155 249 157 302 187 303 182 232 150 248
Polygon -7500403 true true 120 225 110 266 100 300 130 301 138 272 150 210
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 119 209 111 258 143 260 149 229 153 258 189 261 179 209 134 209
Polygon -13840069 true false 106 107 190 109 181 212 121 213 106 107
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 116 220 182 219 180 203 179 200 120 201
Line -6459832 false 116 75 116 74
Polygon -7500403 true true 105 111 135 111 120 216 90 216 105 111
Polygon -1 true false 160 109 165 198 125 180 127 166 123 194 96 172 105 106 158 107
Line -16777216 false 126 166 122 193
Polygon -1184463 true false 132 100 125 70 132 48 154 45 187 50 191 58 173 12 172 20 158 11 156 16 130 12 131 18 123 23 114 37 111 36 102 65 111 81

amber-1.16
false
0
Line -16777216 false 195 165 180 210
Polygon -7500403 true true 105 105 190 105 180 210 210 300 165 300 150 240 135 300 90 300 120 210 105 105
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 120 210 90 270 142 271 150 240 158 273 210 270 180 210 135 210
Polygon -13840069 true false 105 105 187 105 180 210 120 210 105 105
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 150 240 195 240 180 211 179 208 120 209 105 240
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -7500403 true true 193 103 195 105 177 148 197 212 219 210 193 103
Polygon -1 true false 164 104 164 209 179 209 184 155 185 191 213 180 201 104 164 104
Polygon -7500403 true true 203 107 203 141 154 138 119 136 104 106 202 106
Polygon -1 true false 137 137 137 211 122 211 113 167 102 106 102 105 141 106 146 137
Line -16777216 false 104 107 120 211

amber-1.17
false
0
Polygon -7500403 true true 155 249 165 300 195 300 182 232 150 248
Polygon -7500403 true true 120 225 110 266 105 300 135 300 138 272 150 210
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 119 209 111 258 143 260 149 229 153 258 189 261 179 209 134 209
Polygon -13840069 true false 106 107 196 107 181 212 121 213 106 107
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 114 228 180 227 178 211 177 208 118 209
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -7500403 true true 195 111 165 111 180 216 210 216 195 111
Polygon -1 true false 164 106 160 192 175 180 173 166 177 194 204 172 195 106 164 106
Line -16777216 false 174 166 178 193
Polygon -7500403 true true 105 150 60 135 15 120 15 90 86 105 135 120
Polygon -1 true false 135 104 136 190 117 182 108 150 86 145 88 105 106 108 135 104

amber-1.2
false
0
Polygon -7500403 true true 195 105 165 120 225 195 240 165 195 105
Polygon -7500403 true true 105 105 195 105 180 210 210 300 165 300 150 240 135 300 90 300 120 210 105 105
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 120 210 90 270 142 271 150 240 158 273 210 270 180 210 135 210
Polygon -13840069 true false 105 105 195 105 180 210 120 210 105 105
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 150 240 195 240 180 211 179 208 120 209 105 240
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -1 true false 165 105 165 210 180 210 195 165 210 180 225 142 196 105 165 105
Line -16777216 false 225 143 209 178
Line -16777216 false 92 270 142 271
Line -16777216 false 161 274 210 270
Line -16777216 false 195 165 180 210
Polygon -7500403 true true 105 105 135 120 94 221 75 210 105 105
Polygon -1 true false 135 105 135 210 120 210 116 180 105 197 85 173 105 105 135 105
Line -16777216 false 105 196 84 173

amber-1.3
false
0
Polygon -7500403 true true 103 103 193 103 178 208 197 304 158 300 124 302 103 299 110 266 118 208 103 103
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 121 212 110 272 150 270 151 271 150 270 191 272 181 212 136 212
Polygon -13840069 true false 105 106 195 106 180 211 120 210 105 106
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 150 245 188 250 180 212 179 209 120 210 114 244
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -7500403 true true 195 111 165 111 180 216 210 216 195 111
Polygon -1 true false 164 103 164 208 179 208 173 163 177 191 204 169 195 103 164 103
Line -16777216 false 150 246 150 296
Polygon -7500403 true true 105 111 135 111 120 216 90 216 105 111
Polygon -1 true false 135 103 135 208 120 208 126 163 122 191 95 169 104 103 135 103
Line -16777216 false 174 166 178 193
Line -16777216 false 126 166 122 193

amber-1.4
false
0
Polygon -7500403 true true 105 105 195 105 180 210 195 300 165 300 150 300 135 300 105 300 120 210 105 105
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 121 212 107 270 150 270 151 271 150 270 193 270 181 212 136 212
Polygon -13840069 true false 105 106 195 106 180 211 120 211 105 106
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 150 245 188 250 180 212 179 209 120 210 114 244
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Line -16777216 false 195 270 112 272
Line -16777216 false 105 165 120 210
Polygon -7500403 true true 105 105 135 105 120 210 90 210 105 105
Polygon -1 true false 136 105 136 210 121 210 127 165 123 193 96 171 105 105 136 105
Line -16777216 false 125 165 122 190
Polygon -1 true false 164 101 164 206 179 206 173 161 177 189 204 167 195 101 164 101
Line -16777216 false 96 172 122 195
Line -16777216 false 149 245 150 306
Polygon -7500403 true true 144 164 144 179 144 194 204 194 204 164 144 164
Line -16777216 false 162 164 207 164
Line -16777216 false 165 193 177 194

amber-1.5
false
0
Polygon -7500403 true true 104 106 194 106 179 211 196 320 169 319 147 319 117 319 126 276 119 211 104 106
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 120 211 110 264 151 262 150 270 151 262 190 259 180 211 135 211
Polygon -13840069 true false 105 106 195 106 180 211 120 211 105 106
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 151 235 185 236 180 212 179 209 120 210 114 237
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Line -16777216 false 105 165 120 210
Polygon -7500403 true true 105 105 135 105 120 210 90 210 105 105
Polygon -1 true false 136 105 136 210 121 210 127 165 123 193 96 171 105 105 136 105
Line -16777216 false 125 165 122 190
Polygon -1 true false 165 99 165 204 180 204 181 178 180 205 192 132 196 99 165 99
Line -16777216 false 96 172 122 195
Line -16777216 false 151 243 156 278
Polygon -7500403 true true 75 176 92 200 180 150 189 149 189 119 165 120
Polygon -1 true false 136 138 151 165 186 148 195 106 188 104 132 137
Line -16777216 false 118 264 190 260
Line -16777216 false 76 175 136 137
Line -16777216 false 75 178 90 200
Line -16777216 false 90 200 153 165
Line -16777216 false 157 276 154 299

amber-1.6
false
0
Polygon -7500403 true true 194 92 177 104 200 185 220 159 193 94
Polygon -7500403 true true 113 97 194 90 179 195 187 237 180 300 150 300 120 300 130 241 119 195 110 95
Circle -7500403 true true 109 7 80
Rectangle -7500403 true true 130 75 169 94
Polygon -1 true false 123 205 114 266 151 269 153 235 156 269 194 269 183 205 138 205
Polygon -13840069 true false 112 95 195 90 180 195 120 195 110 97
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 154 215 188 210 185 193 184 190 125 191 123 215
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 61 112 25 127 4 129 7 138 -4 142 -1 154 -9 155 -4 164 -10 167 -2 170 -4 177 8 180 7 186 29 189 50 181 22 171 17 152 7 139 10 123 21 114 30 109 49
Line -16777216 false 123 267 149 268
Line -16777216 false 155 269 184 271
Polygon -7500403 true true 103 100 110 98 111 169 87 168 100 101
Polygon -1 true false 163 88 178 163 193 178 188 147 196 164 213 136 194 88 163 88
Polygon -1 true false 131 197 120 195 111 135 110 154 87 154 94 95 131 89
Line -16777216 false 110 153 85 154
Polygon -7500403 true true 218 161 221 161 220 183 185 194 174 170 212 156
Line -16777216 false 215 133 197 159
Line -16777216 false 153 239 150 268
Line -16777216 false 153 242 154 273
Line -16777216 false 151 300 155 273
Polygon -7500403 true true 91 167 88 167 89 185 124 196 135 176 97 162

amber-1.7
false
0
Polygon -7500403 true true 195 105 195 195 180 195 195 105
Polygon -7500403 true true 169 258 160 295 208 299
Polygon -7500403 true true 106 105 196 105 181 210 211 300 165 266 151 240 147 298 108 299 121 210 106 105
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 120 210 114 267 150 270 150 240 158 273 210 270 180 210 135 210
Polygon -13840069 true false 105 105 195 105 180 210 120 210 105 105
Polygon -1 true false 116 224 113 228
Polygon -13840069 true false 150 240 195 240 180 211 179 208 120 209 116 239
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Line -16777216 false 115 266 149 269
Line -16777216 false 161 274 210 270
Line -16777216 false 105 165 120 210
Polygon -7500403 true true 117 119 87 134 42 74 57 59 117 119
Polygon -1 true false 135 105 135 210 120 210 106 157 60 105 85 81 104 105 135 105
Polygon -1 true false 165 105 165 210 180 210 195 105 165 105
Line -16777216 false 81 82 62 100
Polygon -7500403 true true 51 66 91 23 108 44 65 86 47 71

amber-1.8
false
0
Polygon -13840069 true false 116 257 116 294 190 296 185 254
Polygon -7500403 true true 109 118 107 120 109 178 79 208 64 178 109 118
Line -16777216 false 195 165 180 210
Circle -7500403 true true 102 22 92
Rectangle -7500403 true true 130 105 169 124
Polygon -13840069 true false 108 124 192 122 176 270 116 270 112 132
Polygon -1 true false 116 224 113 228
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 105 75 103 37 126 12 131 19 140 5 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 194 43 193 79 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -7500403 true true 204 131 198 131 189 123 199 265 222 261 206 141
Polygon -1 true false 155 123 162 272 189 271 191 172 197 234 220 217 208 128 154 120
Polygon -1 true false 137 123 136 267 112 271 107 183 92 198 77 160 106 123 137 123
Polygon -7500403 true true 25 123 69 220 86 201 44 107 26 115
Circle -16777216 true false 11 82 28
Polygon -13840069 true false 13 115 25 127 51 115 45 97
Line -16777216 false 15 120 45 105
Line -16777216 false 48 116 91 195
Line -16777216 false 222 213 197 233
Line -16777216 false 25 123 68 219
Line -16777216 false 90 197 70 218
Line -16777216 false 197 232 199 263
Line -16777216 false 217 221 224 264
Line -16777216 false 201 263 221 262
Line -16777216 false 105 120 75 165
Line -16777216 false 108 124 190 123
Line -16777216 false 220 213 208 125

amber-1.9
false
0
Polygon -13840069 true false 116 257 116 294 190 296 185 254
Polygon -7500403 true true 109 118 107 120 109 178 79 208 64 178 109 118
Line -16777216 false 195 165 180 210
Circle -7500403 true true 102 22 92
Rectangle -7500403 true true 130 105 169 124
Polygon -13840069 true false 108 124 192 122 176 270 116 270 112 132
Polygon -1 true false 116 224 113 228
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 105 75 103 37 126 12 131 19 140 5 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 194 43 193 79 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -7500403 true true 204 131 198 131 189 123 199 265 222 261 206 141
Polygon -1 true false 155 121 162 270 189 269 191 170 197 232 220 215 208 126 154 118
Polygon -1 true false 137 123 136 267 112 271 107 183 92 198 77 160 106 123 137 123
Polygon -7500403 true true 64 178 64 208 79 208 123 198 153 203 139 178
Circle -16777216 true false 121 178 28
Polygon -13840069 true false 109 202 106 186 132 174 127 201
Line -16777216 false 84 177 124 177
Line -16777216 false 76 163 83 177
Line -16777216 false 217 219 199 232
Line -16777216 false 120 180 120 195
Line -16777216 false 105 120 60 180
Line -16777216 false 105 120 135 120
Line -16777216 false 155 119 205 126
Line -16777216 false 209 128 221 217
Line -16777216 false 191 178 189 267
Line -16777216 false 197 232 193 178
Line -16777216 false 108 204 111 273
Line -16777216 false 64 180 65 206
Line -16777216 false 66 210 106 201

amber-2
false
0
Polygon -7500403 true true 105 105 103 107 120 135 75 195 60 165 105 105
Polygon -7500403 true true 195 105 197 107 180 135 225 195 240 165 195 105
Polygon -2674135 true false 105 105 195 105 180 210 210 300 165 300 150 240 135 300 90 300 120 210 105 105
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 130 90 169 109
Polygon -1 true false 116 224 113 228
Line -6459832 false 116 75 116 74
Polygon -1184463 true false 110 76 112 40 127 19 129 22 138 11 142 14 154 6 155 11 164 5 167 13 170 11 177 23 180 22 186 44 189 65 181 37 171 32 152 22 139 25 123 36 114 45 109 64
Polygon -2674135 true false 165 107 165 137 165 242 195 242 195 155 207 172 225 140 195 107 165 107
Polygon -2674135 true false 135 105 135 135 135 240 105 240 107 157 93 170 75 135 105 105 135 105
Line -16777216 false 165 105 165 240
Line -16777216 false 135 105 135 240
Line -16777216 false 105 240 135 240
Line -16777216 false 165 240 195 240
Line -16777216 false 138 209 166 208

amber-3.1
true
0
Polygon -7500403 true true 105 195 225 195 210 240 105 240 105 195
Polygon -13791810 true false 135 210 165 210 180 210 165 255 120 255 120 210 135 210
Circle -7500403 true true 86 56 127
Polygon -1184463 true false 132 95 215 125 218 119 212 102 115 90 136 97
Polygon -2064490 true false 85 94 248 107 210 96 207 55 185 41 152 33 119 38 94 50 80 72 82 88 79 93 84 94
Polygon -1184463 true false 96 147 96 114 109 96 112 93 92 93 82 117 91 153 95 146
Line -16777216 false 89 86 144 37
Line -16777216 false 119 87 170 42
Line -16777216 false 150 91 194 53
Line -16777216 false 202 74 177 94
Line -16777216 false 89 62 116 87
Line -16777216 false 108 49 157 92
Line -16777216 false 130 40 188 93
Line -16777216 false 157 38 204 83
Line -6459832 false 131 119 100 114
Line -6459832 false 165 118 193 114
Circle -16777216 false false 115 123 15
Circle -16777216 false false 164 119 16
Polygon -2064490 true false 139 167 148 171 157 170 165 163 142 167
Rectangle -7500403 true true 129 178 172 196
Polygon -1 true false 75 195 120 195 150 255 180 195 225 195 210 300 105 300 90 300
Polygon -7500403 true true 75 240 120 255 105 300 60 300 75 240
Polygon -7500403 true true 75 195 75 240 90 255 75 195
Line -16777216 false 225 195 210 300
Line -16777216 false 180 195 225 195
Line -16777216 false 75 195 120 195
Line -16777216 false 75 195 120 195
Line -16777216 false 180 195 225 195
Line -16777216 false 225 195 210 315

amber-3.2
true
0
Polygon -7500403 true true 105 195 225 195 210 240 105 240 105 195
Polygon -13791810 true false 135 210 165 210 180 210 165 255 120 255 120 210 135 210
Circle -7500403 true true 86 56 127
Polygon -1184463 true false 132 95 215 125 218 119 212 102 115 90 136 97
Polygon -2064490 true false 85 94 248 107 210 96 207 55 185 41 152 33 119 38 94 50 80 72 82 88 79 93 84 94
Polygon -1184463 true false 96 147 96 114 109 96 112 93 92 93 82 117 91 153 95 146
Line -16777216 false 89 86 144 37
Line -16777216 false 119 87 170 42
Line -16777216 false 150 91 194 53
Line -16777216 false 202 74 177 94
Line -16777216 false 89 62 116 87
Line -16777216 false 108 49 157 92
Line -16777216 false 130 40 188 93
Line -16777216 false 157 38 204 83
Line -6459832 false 131 119 100 114
Line -6459832 false 165 118 193 114
Circle -16777216 false false 115 123 15
Circle -16777216 false false 164 119 16
Polygon -2064490 true false 143 167 153 173 157 170 160 163 151 159
Rectangle -7500403 true true 129 178 172 196
Polygon -1 true false 75 195 120 195 150 255 180 195 225 195 210 300 105 300 90 300
Polygon -7500403 true true 75 240 120 255 105 300 60 300 75 240
Polygon -7500403 true true 75 195 75 240 90 255 75 195
Line -16777216 false 225 195 210 300
Line -16777216 false 180 195 225 195
Line -16777216 false 75 195 120 195
Line -16777216 false 75 195 120 195
Line -16777216 false 180 195 225 195
Line -16777216 false 225 195 210 315

arm-1
true
0
Polygon -7500403 true true 195 90 240 150 225 180 165 105 195 90
Polygon -7500403 true true 105 90 60 150 75 180 135 105 105 90

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

balloon
false
0
Circle -7500403 true true 88 0 122
Polygon -7500403 true true 208 75 193 120 176 150 163 165 148 180 148 210 148 180 144 105
Polygon -7500403 true true 90 76 105 121 121 149 135 166 150 181 150 211 150 181 154 106
Circle -16777216 false false 116 68 34
Rectangle -7500403 true true 121 54 145 112
Rectangle -16777216 false false 126 71 144 84
Line -16777216 false 126 72 126 95
Rectangle -7500403 true true 136 69 145 89
Line -16777216 false 169 80 157 95
Line -16777216 false 158 82 169 95
Line -16777216 false 148 178 140 215
Line -16777216 false 140 214 159 249
Line -16777216 false 158 251 144 290
Line -16777216 false 146 290 158 344

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

heart
true
0
Circle -2064490 true false 48 63 85
Circle -2064490 true false 123 63 85
Polygon -2064490 true false 60 131 135 225 201 125

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

krystal-1
false
0
Polygon -7500403 true true 195 105 240 150 225 180 165 120
Polygon -7500403 true true 105 105 60 150 75 180 135 120
Polygon -7500403 true true 107 104 122 209 92 299 107 299 137 299 152 239 167 299 197 299 212 299 182 209 197 104
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -13791810 true false 105 255 195 255 180 210 180 195 120 195 120 210 105 255
Polygon -13345367 true false 105 255 150 210 195 255 180 210 195 105 105 105 120 210 105 255
Circle -1 true false 150 105 30
Circle -1 true false 150 165 30
Circle -1 true false 120 135 30
Polygon -6459832 true false 121 43 121 118 106 118 106 43 115 22 128 16 149 15 171 15 187 18 195 31 196 43 196 118 181 118 181 43 174 30 163 26 154 27 149 27 142 29
Polygon -2064490 true false 120 30 120 45 135 30 120 30 135 30 135 15 150 30 135 30
Circle -16777216 false false 150 105 30
Circle -16777216 false false 150 165 30
Circle -16777216 false false 120 135 30

krystal-1.1
false
0
Polygon -7500403 true true 105 105 75 135 90 165 135 120
Polygon -7500403 true true 107 104 122 209 92 299 107 299 137 299 152 239 167 299 197 299 212 299 182 209 197 104
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 225 135 210 165 165 120
Polygon -13791810 true false 105 255 195 255 180 210 180 195 120 195 120 210 105 255
Polygon -13345367 true false 105 255 150 195 198 254 182 209 195 105 105 105 120 210 105 255
Circle -1 true false 150 105 30
Circle -1 true false 150 165 30
Circle -1 true false 120 135 30
Polygon -6459832 true false 121 43 121 118 106 118 106 43 115 22 128 16 149 15 171 15 187 18 195 31 196 43 196 118 181 118 181 43 174 30 163 26 154 27 149 27 142 29
Polygon -2064490 true false 120 30 120 45 135 30 120 30 135 30 135 15 150 30 135 30
Circle -16777216 false false 150 105 30
Circle -16777216 false false 120 135 30
Circle -16777216 false false 150 165 30
Polygon -7500403 true true 225 135 135 150 135 165 225 165 225 135
Polygon -7500403 true true 75 135 165 165 165 180 75 165 75 135

krystal-1.2
false
0
Polygon -7500403 true true 165 225 165 270 180 300 210 300 195 270 180 225 165 225
Polygon -7500403 true true 120 210 120 270 90 300 120 300 150 270 135 225
Polygon -7500403 true true 105 105 90 150 105 180 135 120
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -13791810 true false 105 255 195 255 180 210 180 195 120 195 120 210 105 255
Polygon -13345367 true false 105 254 150 194 198 253 182 208 195 104 105 104 120 209 105 254
Circle -1 true false 150 105 30
Circle -1 true false 150 165 30
Circle -1 true false 120 135 30
Polygon -6459832 true false 121 43 121 118 106 118 106 43 115 22 128 16 149 15 171 15 187 18 195 31 196 43 196 118 181 118 181 43 174 30 163 26 154 27 149 27 142 29
Polygon -2064490 true false 120 30 120 45 135 30 120 30 135 30 135 15 150 30 135 30
Circle -16777216 false false 120 135 30
Circle -16777216 false false 150 105 30
Circle -16777216 false false 150 165 30
Polygon -7500403 true true 180 105 225 150 210 180 150 120
Polygon -7500403 true true 195 105 225 150
Polygon -7500403 true true 195 105 225 150 195 150
Polygon -7500403 true true 82 165 105 225 120 225 135 225 116 176 112 156 89 151

krystal-1.3
false
0
Polygon -7500403 true true 105 105 105 210 120 210 135 120
Polygon -7500403 true true 195 105 240 150 225 180 165 120
Polygon -7500403 true true 107 104 122 209 113 243 120 270 105 300 180 300 195 270 182 209 197 104
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -13791810 true false 105 255 195 255 180 210 180 195 120 195 120 210 105 255
Polygon -13345367 true false 105 255 150 195 198 254 182 209 195 105 105 105 120 210 105 255
Circle -1 true false 150 105 30
Circle -1 true false 150 165 30
Circle -1 true false 120 135 30
Polygon -6459832 true false 121 43 121 118 106 118 106 43 115 22 128 16 149 15 171 15 187 18 195 31 196 43 196 118 181 118 181 43 174 30 163 26 154 27 149 27 142 29
Polygon -2064490 true false 120 30 120 45 135 30 120 30 135 30 135 15 150 30 135 30
Circle -16777216 false false 150 105 30
Circle -16777216 false false 120 135 30
Circle -16777216 false false 150 165 30
Polygon -7500403 true true 210 150 180 180 195 210 240 165 240 150
Line -16777216 false 152 255 157 268
Line -16777216 false 158 269 142 302

krystal-1.4
false
0
Polygon -7500403 true true 55 128 58 183 93 187 90 165 93 143 120 135 120 105
Polygon -7500403 true true 191 103 227 197 191 196 161 118
Polygon -7500403 true true 106 104 121 209 104 302 106 299 144 300 151 239 159 301 196 299 199 299 181 209 196 104
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -13791810 true false 105 255 195 255 180 210 180 195 120 195 120 210 105 255
Polygon -13345367 true false 105 255 150 195 198 254 182 209 195 105 105 105 120 210 105 255
Circle -1 true false 150 105 30
Circle -1 true false 150 165 30
Circle -1 true false 120 135 30
Polygon -6459832 true false 121 43 121 118 106 118 106 43 115 22 128 16 149 15 171 15 187 18 195 31 196 43 196 118 181 118 181 43 174 30 163 26 154 27 149 27 142 29
Polygon -2064490 true false 120 30 120 45 135 30 120 30 135 30 135 15 150 30 135 30
Circle -16777216 false false 150 105 30
Circle -16777216 false false 120 135 30
Circle -16777216 false false 150 165 30

krystal-1.5
false
0
Polygon -7500403 true true 55 112 58 57 93 53 85 76 86 95 120 105 120 135
Polygon -7500403 true true 191 103 227 197 191 196 161 118
Polygon -7500403 true true 108 105 123 210 87 303 116 302 127 302 153 240 153 302 194 299 193 300 183 210 198 105
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -13791810 true false 105 255 195 255 180 210 180 195 120 195 120 210 105 255
Polygon -13345367 true false 105 255 150 195 198 254 182 209 195 105 105 105 120 210 105 255
Circle -1 true false 150 105 30
Circle -1 true false 150 165 30
Circle -1 true false 120 135 30
Polygon -6459832 true false 121 43 121 118 106 118 106 43 115 22 128 16 149 15 171 15 187 18 195 31 196 43 196 118 181 118 181 43 174 30 163 26 154 27 149 27 142 29
Polygon -2064490 true false 120 30 120 45 135 30 120 30 135 30 135 15 150 30 135 30
Circle -16777216 false false 150 105 30
Circle -16777216 false false 120 135 30
Circle -16777216 false false 150 165 30

krystal-1.6
false
0
Polygon -7500403 true true 245 112 242 57 207 53 215 76 214 95 180 105 180 135
Polygon -7500403 true true 109 103 73 197 109 196 139 118
Polygon -7500403 true true 108 105 123 210 87 303 116 302 127 302 153 240 153 302 194 299 193 300 183 210 198 105
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -13791810 true false 105 255 195 255 180 210 180 195 120 195 120 210 105 255
Polygon -13345367 true false 105 255 150 195 198 254 182 209 195 105 105 105 120 210 105 255
Circle -1 true false 150 105 30
Circle -1 true false 150 165 30
Circle -1 true false 120 135 30
Polygon -6459832 true false 121 43 121 118 106 118 106 43 115 22 128 16 149 15 171 15 187 18 195 31 196 43 196 118 181 118 181 43 174 30 163 26 154 27 149 27 142 29
Polygon -2064490 true false 120 30 120 45 135 30 120 30 135 30 135 15 150 30 135 30
Circle -16777216 false false 150 105 30
Circle -16777216 false false 120 135 30
Circle -16777216 false false 150 165 30

krystal-1.7
false
0
Polygon -7500403 true true 195 150 195 105 180 120
Polygon -7500403 true true 195 135 240 135 240 165 180 165
Polygon -7500403 true true 107 104 122 209 92 299 107 299 137 299 152 239 167 299 197 299 212 299 182 209 197 104
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -13791810 true false 105 255 195 255 180 210 180 195 120 195 120 210 105 255
Polygon -13345367 true false 105 255 150 255 180 210 182 209 195 105 105 105 120 210 105 255
Circle -1 true false 150 105 30
Circle -1 true false 150 165 30
Circle -1 true false 120 135 30
Circle -16777216 false false 150 105 30
Circle -16777216 false false 150 165 30
Circle -16777216 false false 120 135 30
Circle -1 true false 120 195 30
Circle -16777216 false false 120 195 30
Polygon -7500403 true true 105 105 90 210 120 210 135 105
Polygon -7500403 true true 195 150 180 120
Polygon -6459832 true false 181 53 192 57 186 29 166 20 143 17 125 24 112 33 105 52 106 108 109 138 113 140 128 143 128 119 132 89 138 78 147 60 158 57 166 51 173 53 179 52
Polygon -2064490 true false 153 40 153 55 168 40 153 40 168 40 168 25 183 40 168 40

krystal-1.8
false
0
Polygon -7500403 true true 191 103 227 197 191 196 161 118
Polygon -7500403 true true 106 104 121 209 104 302 106 299 144 300 151 239 159 301 196 299 199 299 181 209 196 104
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -13791810 true false 105 255 195 255 180 210 180 195 120 195 120 210 105 255
Polygon -13345367 true false 105 255 150 195 198 254 182 209 195 105 105 105 120 210 105 255
Circle -1 true false 150 105 30
Circle -1 true false 150 165 30
Circle -1 true false 120 135 30
Circle -16777216 false false 150 105 30
Circle -16777216 false false 120 135 30
Circle -16777216 false false 150 165 30
Polygon -7500403 true true 125 171 169 153 225 134 213 106 134 130 118 106 102 105
Polygon -6459832 true false 121 43 121 118 106 118 106 43 115 22 128 16 149 15 171 15 187 18 195 31 196 43 196 118 181 118 181 43 174 30 163 26 154 27 149 27 142 29
Polygon -2064490 true false 120 30 120 45 135 30 120 30 135 30 135 15 150 30 135 30

krystal-1.9
false
0
Polygon -7500403 true true 120 105 169 153 30 135 30 105 120 105 118 106 102 105
Polygon -7500403 true true 191 103 227 197 191 196 161 118
Polygon -7500403 true true 106 104 121 209 104 302 106 299 144 300 151 239 159 301 196 299 199 299 181 209 196 104
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -13791810 true false 105 255 195 255 180 210 180 195 120 195 120 210 105 255
Polygon -13345367 true false 105 255 150 195 198 254 182 209 195 105 105 105 120 210 105 255
Circle -1 true false 150 105 30
Circle -1 true false 150 165 30
Circle -1 true false 120 135 30
Circle -16777216 false false 150 105 30
Circle -16777216 false false 120 135 30
Circle -16777216 false false 150 165 30
Polygon -6459832 true false 121 43 121 118 106 118 106 43 115 22 128 16 149 15 171 15 187 18 195 31 196 43 196 118 181 118 181 43 174 30 163 26 154 27 149 27 142 29
Polygon -2064490 true false 120 30 120 45 135 30 120 30 135 30 135 15 150 30 135 30

krystal-2
false
0
Polygon -7500403 true true 135 120 90 180 60 165 105 106
Polygon -7500403 true true 165 120 210 180 240 165 195 106
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 182 106
Rectangle -7500403 true true 127 94 172 109
Polygon -2674135 true false 124 253 193 251 180 208 120 210 105 255
Polygon -2674135 true false 106 105 120 210 181 208 183 106 165 105 166 112 164 118 152 119 136 118 131 110 132 105 109 105
Rectangle -16777216 false false 115 175 151 183
Rectangle -16777216 false false 162 175 183 183
Polygon -16777216 false false 172 199 165 186 158 175 151 181 156 202
Polygon -16777216 false false 134 199 141 186 148 177 155 181 150 202
Polygon -6459832 true false 103 135 118 135 118 90 118 60 127 46 147 35 170 43 178 62 184 93 182 136 198 132 198 56 189 38 155 13 127 24 113 34 102 64 102 96

krystal-2.1
false
0
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 150 300 195 300 180 210 182 106
Rectangle -7500403 true true 127 94 172 109
Polygon -2674135 true false 124 253 193 251 180 208 101 209 105 255
Polygon -2674135 true false 106 105 101 211 181 208 183 106 165 105 166 112 164 118 152 119 136 118 131 110 132 105 109 105
Rectangle -16777216 false false 115 175 151 183
Rectangle -16777216 false false 162 175 183 183
Polygon -16777216 false false 172 199 165 186 158 175 151 181 156 202
Polygon -16777216 false false 134 199 141 186 148 177 155 181 150 202
Polygon -7500403 true true 135 105 180 165 165 195 105 106
Polygon -7500403 true true 165 195 225 135 210 120 150 165
Polygon -6459832 true false 171 32 148 34 128 152 94 155 106 49 112 26 133 16 165 16 178 20 181 35 166 35
Polygon -2674135 true false 142 10 142 68 159 67 156 9

krystal-2.2
false
0
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 105 210 105 300 150 300 150 240 150 255 150 300 180 300 173 208 182 106
Rectangle -7500403 true true 127 94 172 109
Polygon -2674135 true false 124 253 180 255 173 207 101 209 105 255
Polygon -2674135 true false 106 105 101 211 175 208 183 106 165 105 166 112 164 118 152 119 136 118 131 110 132 105 109 105
Rectangle -16777216 false false 104 172 151 183
Rectangle -16777216 false false 162 175 183 183
Polygon -16777216 false false 172 199 165 186 158 175 151 181 156 202
Polygon -16777216 false false 134 199 141 186 148 177 155 181 150 202
Polygon -7500403 true true 135 105 165 165 150 195 105 106
Polygon -7500403 true true 150 195 210 195 210 165 150 165
Polygon -6459832 true false 171 32 148 34 128 152 94 155 106 49 112 26 133 16 165 16 178 20 181 35 166 35
Polygon -2674135 true false 142 10 142 68 159 67 156 9

krystal-2.3
false
0
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 105 210 105 300 150 300 150 240 150 255 150 300 180 300 173 208 182 106
Rectangle -7500403 true true 127 94 172 109
Polygon -2674135 true false 124 253 180 255 173 207 101 209 105 255
Polygon -2674135 true false 106 105 101 211 175 208 183 106 165 105 166 112 164 118 152 119 136 118 131 110 132 105 109 105
Rectangle -16777216 false false 104 172 151 183
Rectangle -16777216 false false 162 175 183 183
Polygon -16777216 false false 172 199 165 186 158 175 151 181 156 202
Polygon -16777216 false false 134 199 141 186 148 177 155 181 150 202
Polygon -7500403 true true 135 105 165 165 150 195 105 106
Polygon -7500403 true true 150 195 180 240 195 210 165 165
Polygon -6459832 true false 171 32 148 34 128 152 94 155 106 49 112 26 133 16 165 16 178 20 181 35 166 35
Polygon -2674135 true false 142 10 142 68 159 67 156 9

krystal-3.1
true
0
Circle -7500403 true true 76 93 142
Rectangle -7500403 true true 114 223 181 255
Polygon -6459832 true false 134 96 116 121 101 159 101 204 110 222 116 240 119 256 120 271 120 286 69 286 81 268 65 215 69 151 81 111 93 102 118 87 144 81 171 83 197 88 206 100 227 145 232 168 227 196 216 223 215 240 219 256 222 265 218 279 190 285 188 267 188 247 187 240 197 215 207 201 214 188 216 168 213 144 203 117 189 107 163 100 143 93 133 91
Polygon -16777216 true false 83 166 68 150 67 119 71 97 78 82 97 62 129 60 172 69 191 75 213 101 210 109 154 94 107 104 88 127 83 152 81 159
Line -6459832 false 124 129 158 137
Line -6459832 false 180 142 210 147
Circle -16777216 false false 129 141 21
Circle -16777216 false false 177 149 21
Polygon -2064490 true false 142 199 169 205 153 211 141 201

krystal-3.2
true
0
Circle -7500403 true true 76 93 142
Rectangle -7500403 true true 114 223 181 255
Polygon -6459832 true false 134 96 116 121 101 159 101 204 110 222 116 240 119 256 120 271 120 286 69 286 81 268 65 215 69 151 81 111 93 102 118 87 144 81 171 83 197 88 206 100 227 145 232 168 227 196 216 223 215 240 219 256 222 265 218 279 190 285 188 267 188 247 187 240 197 215 207 201 214 188 216 168 213 144 203 117 189 107 163 100 143 93 133 91
Polygon -16777216 true false 83 166 68 150 67 119 71 97 78 82 97 62 129 60 172 69 191 75 213 101 210 109 154 94 107 104 88 127 83 152 81 159
Line -6459832 false 124 129 158 137
Line -6459832 false 180 142 210 147
Circle -16777216 false false 129 141 21
Circle -16777216 false false 177 149 21
Polygon -2064490 true false 156 192 164 204 155 209 147 201

krystal-3.3
true
0
Circle -7500403 true true 76 93 142
Rectangle -7500403 true true 114 223 181 255
Polygon -6459832 true false 166 96 184 121 199 159 199 204 190 222 184 240 181 256 180 271 180 286 231 286 219 268 235 215 231 151 219 111 207 102 182 87 156 81 129 83 103 88 94 100 73 145 68 168 73 196 84 223 85 240 81 256 78 265 82 279 110 285 112 267 112 247 113 240 103 215 93 201 86 188 84 168 87 144 97 117 111 107 137 100 157 93 167 91
Polygon -16777216 true false 217 166 232 150 233 119 229 97 222 82 203 62 171 60 128 69 109 75 87 101 90 109 146 94 193 104 212 127 217 152 219 159
Line -6459832 false 176 129 142 137
Line -6459832 false 120 142 90 147
Circle -16777216 false false 150 141 21
Circle -16777216 false false 102 149 21
Polygon -2064490 true false 144 192 136 204 145 209 153 201

krystal-3.4
true
0
Circle -7500403 true true 76 93 142
Rectangle -7500403 true true 114 223 181 255
Polygon -6459832 true false 166 96 184 121 199 159 199 204 190 222 184 240 181 256 180 271 180 286 231 286 219 268 235 215 231 151 219 111 207 102 182 87 156 81 129 83 103 88 94 100 73 145 68 168 73 196 84 223 85 240 81 256 78 265 82 279 110 285 112 267 112 247 113 240 103 215 93 201 86 188 84 168 87 144 97 117 111 107 137 100 157 93 167 91
Polygon -16777216 true false 217 166 232 150 233 119 229 97 222 82 203 62 171 60 128 69 109 75 87 101 90 109 146 94 193 104 212 127 217 152 219 159
Line -6459832 false 176 129 142 137
Line -6459832 false 120 142 90 147
Circle -16777216 false false 150 141 21
Circle -16777216 false false 102 149 21
Polygon -2064490 true false 158 199 131 205 147 211 159 201

krystal-3.5
true
0
Circle -7500403 true true 76 93 142
Rectangle -7500403 true true 114 223 181 255
Polygon -6459832 true false 166 96 184 121 199 159 199 204 190 222 184 240 181 256 180 271 180 286 231 286 219 268 235 215 231 151 219 111 207 102 182 87 156 81 129 83 103 88 94 100 73 145 68 168 73 196 84 223 85 240 81 256 78 265 82 279 110 285 112 267 112 247 113 240 103 215 93 201 86 188 84 168 87 144 97 117 111 107 137 100 157 93 167 91
Polygon -16777216 true false 217 166 232 150 233 119 229 97 222 82 203 62 171 60 128 69 109 75 87 101 90 109 146 94 193 104 212 127 217 152 219 159
Line -6459832 false 176 129 142 137
Line -6459832 false 120 142 90 147
Circle -16777216 false false 102 149 21
Polygon -2064490 true false 158 199 131 205 147 211 159 201
Polygon -16777216 false false 151 152 159 145 173 144 178 150 169 154 162 156

krystal-3.6
true
0
Circle -7500403 true true 76 93 142
Rectangle -7500403 true true 114 223 181 255
Polygon -6459832 true false 166 96 184 121 199 159 199 204 190 222 184 240 181 256 180 271 180 286 231 286 219 268 235 215 231 151 219 111 207 102 182 87 156 81 129 83 103 88 94 100 73 145 68 168 73 196 84 223 85 240 81 256 78 265 82 279 110 285 112 267 112 247 113 240 103 215 93 201 86 188 84 168 87 144 97 117 111 107 137 100 157 93 167 91
Polygon -16777216 true false 217 166 232 150 233 119 229 97 222 82 203 62 171 60 128 69 109 75 87 101 90 109 146 94 193 104 212 127 217 152 219 159
Line -6459832 false 176 129 142 137
Line -6459832 false 120 142 90 147
Circle -16777216 false false 102 149 21
Polygon -2064490 true false 158 199 131 205 147 211 159 201
Line -16777216 false 152 156 170 152

krystal-3.7
false
0
Polygon -7500403 true true 103 144 192 145 195 190 116 214
Polygon -7500403 true true 203 146 231 275 204 283 174 153
Polygon -7500403 true true 91 143 68 282 101 285 120 150
Circle -7500403 true true 97 46 94
Rectangle -7500403 true true 119 129 172 148
Polygon -16777216 true false 117 145 121 168 143 187 156 186 172 163 173 146 198 144 186 292 113 292 94 142
Polygon -6459832 true false 110 78 110 187 86 203 96 65 105 44 118 38 139 37 161 37 177 40 185 53 195 66 202 165 177 182 171 80 169 80 149 62 141 57 132 54 122 51
Polygon -16777216 true false 106 64 116 53 158 47 174 51 196 74 205 44 189 19 162 15 137 -6 128 -10 117 0 111 12 106 15 99 23 82 29 81 54 89 68 97 75
Polygon -16777216 true false 128 144 148 167 162 143 167 143 148 173 123 145

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

luna-1
false
0
Polygon -7500403 true true 105 105 60 165 75 195 135 120
Polygon -7500403 true true 195 105 240 165 225 195 165 120
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 105 121 210 91 300 106 300 136 300 151 240 166 300 196 300 211 300 181 210 196 105
Rectangle -7500403 true true 127 94 172 109
Polygon -16777216 true false 105 105 120 210 105 255 197 256 182 211 195 105 180 105 150 135 120 105 105 105
Polygon -5825686 true false 135 105 135 210 118 211 111 151 87 180 76 139 105 105 135 105
Polygon -1184463 true false 112 123 123 121 125 53 152 36 174 51 179 122 196 122 191 39 182 25 162 22 143 22 137 22 123 28 114 32 113 47 107 58 107 64 107 81
Polygon -5825686 true false 165 105 165 210 182 211 189 151 213 180 224 139 195 105 165 105

luna-1.1
false
0
Polygon -7500403 true true 197 108 192 145 190 151 198 198 218 198 218 148 197 114
Polygon -7500403 true true 120 105 195 105 180 135 135 135 120 105
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 75 150 90 165 135 120
Polygon -1184463 true false 112 123 123 121 125 53 152 36 174 51 179 122 196 122 191 39 182 25 162 22 143 22 137 22 123 28 114 32 113 47 107 58 107 64 107 81
Polygon -7500403 true true 120 210 165 210 180 300 150 300 120 210
Polygon -7500403 true true 165 210 180 210 135 300 90 300 150 210 180 210
Polygon -16777216 true false 105 105 120 210 105 255 197 256 182 211 195 105 180 105 150 135 120 105 105 105
Polygon -5825686 true false 135 105 135 210 120 210 112 154 90 180 77 141 105 105 135 105
Polygon -5825686 true false 166 105 166 210 183 211 189 150 195 180 222 155 196 105 166 105
Line -16777216 false 143 284 161 249
Polygon -7500403 true true 75 150 120 195 105 210 75 180 75 150
Polygon -7500403 true true 198 194 199 209 218 211 218 193

luna-1.3
false
0
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 105 121 210 91 300 106 300 136 300 151 240 166 300 196 300 211 300 181 210 196 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 75 150 90 180 135 120
Polygon -16777216 true false 105 105 120 210 105 255 197 256 182 211 195 105 180 105 150 135 120 105 105 105
Polygon -5825686 true false 135 104 135 209 120 209 112 153 90 179 77 140 105 104 135 104
Polygon -5825686 true false 166 103 166 208 183 209 191 148 211 178 225 137 196 103 166 103
Polygon -1184463 true false 112 123 123 121 125 53 152 36 174 51 179 122 196 122 191 39 182 25 162 22 143 22 137 22 123 28 114 32 113 47 107 58 107 64 107 81
Polygon -7500403 true true 64 167 111 219 124 193 80 142
Polygon -7500403 true true 209 152 179 182 194 197 239 167 224 137

luna-1.4
false
0
Polygon -7500403 true true 61 124 58 184 87 183 90 150 135 135 120 105
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 105 121 210 91 300 106 300 136 300 151 240 166 300 196 300 211 300 181 210 196 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 240 165 225 195 165 120
Polygon -16777216 true false 105 105 120 210 105 255 197 256 182 211 195 105 180 105 150 135 120 105 105 105
Polygon -5825686 true false 129 105 129 210 120 210 110 144 90 150 68 120 99 105 129 105
Polygon -5825686 true false 165 105 165 210 182 211 189 151 213 180 224 139 195 105 165 105
Polygon -1184463 true false 112 123 123 121 125 53 152 36 174 51 179 122 196 122 191 39 182 25 162 22 143 22 137 22 123 28 114 32 113 47 107 58 107 64 107 81

luna-1.5
false
0
Polygon -7500403 true true 61 131 58 71 87 72 90 105 135 120 120 150
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 103 121 208 91 298 128 298 143 236 151 238 153 299 192 298 196 299 181 208 196 103
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 240 165 225 195 165 120
Polygon -16777216 true false 105 105 120 210 105 255 192 256 182 211 195 105 180 105 150 135 120 105 105 105
Polygon -5825686 true false 129 105 129 210 120 210 110 147 62 132 92 105 99 105 129 105
Polygon -5825686 true false 165 105 165 210 182 211 189 151 213 180 224 139 195 105 165 105
Polygon -1184463 true false 112 123 123 121 125 53 152 36 174 51 179 122 196 122 191 39 182 25 162 22 143 22 137 22 123 28 114 32 113 47 107 58 107 64 107 81

luna-1.6
false
0
Polygon -7500403 true true 243 109 244 59 215 65 213 93 158 117 186 147
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 103 121 208 91 298 128 298 143 236 151 238 153 299 192 298 196 299 181 208 196 103
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 75 210 105 210 135 120
Polygon -16777216 true false 105 105 120 210 105 255 192 256 182 211 192 124 187 122 149 106 120 105 105 105
Polygon -5825686 true false 166 103 164 208 118 208 115 176 110 187 84 160 105 102 157 103
Polygon -1184463 true false 177 39 149 39 139 50 139 66 139 106 139 122 113 125 107 92 107 45 124 13 164 9 184 17 188 33 192 46 186 52

luna-1.7
false
0
Polygon -7500403 true true 195 190 245 191 239 162 211 160 187 105 180 150
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 103 121 208 91 298 128 298 143 236 151 238 153 299 192 298 196 299 181 208 196 103
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 75 210 105 210 135 120
Polygon -16777216 true false 105 105 120 210 105 255 192 256 182 211 192 124 187 122 149 106 120 105 105 105
Polygon -5825686 true false 166 103 164 208 118 208 115 176 110 187 84 160 105 102 157 103
Polygon -1184463 true false 177 39 149 39 139 50 139 66 139 106 139 122 113 125 107 92 107 45 124 13 164 9 184 17 188 33 192 46 186 52

luna-1.8
false
0
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 105 121 210 91 300 106 300 136 300 151 240 166 300 196 300 211 300 181 210 196 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 240 165 225 195 165 120
Polygon -16777216 true false 105 105 120 210 105 255 197 256 182 211 195 105 180 105 150 135 120 105 105 105
Polygon -5825686 true false 165 105 165 210 182 211 189 151 213 180 224 139 195 105 165 105
Polygon -1184463 true false 112 123 123 121 125 53 152 36 174 51 179 122 196 122 191 39 182 25 162 22 143 22 137 22 123 28 114 32 113 47 107 58 107 64 107 81
Polygon -5825686 true false 130 106 130 211 121 211 111 145 88 151 94 124 100 106 130 106
Polygon -7500403 true true 86 152 185 151 192 126 131 124 131 123 88 151

luna-1.9
false
0
Polygon -7500403 true true 137 141 29 143 21 111 91 108 91 107 134 135
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 105 121 210 91 300 106 300 136 300 151 240 166 300 196 300 211 300 181 210 196 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 240 165 225 195 165 120
Polygon -16777216 true false 105 105 120 210 105 255 197 256 182 211 195 105 180 105 150 135 120 105 105 105
Polygon -5825686 true false 135 105 135 210 118 211 111 151 73 146 60 105 105 105 135 105
Polygon -1184463 true false 112 123 123 121 125 53 152 36 174 51 179 122 196 122 191 39 182 25 162 22 143 22 137 22 123 28 114 32 113 47 107 58 107 64 107 81
Polygon -5825686 true false 165 105 165 210 182 211 189 151 213 180 224 139 195 105 165 105

luna-2
false
0
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 240 165 225 195 165 120
Polygon -7500403 true true 105 105 60 165 75 195 135 120
Polygon -2674135 true false 227 148 210 180 218 188 235 155 230 150
Polygon -7500403 true true 105 105 195 105 180 210
Polygon -2674135 true false 106 104 121 209 91 299 106 299 136 299 151 239 166 299 196 299 211 299 181 209 190 150
Polygon -1184463 true false 176 47 157 34 137 36 125 46 124 74 123 106 125 141 107 151 107 65 116 18 139 16 162 19 180 27 192 39 195 57 193 92 193 129 192 143 176 144 177 57 176 42
Line -16777216 false 121 211 179 211
Rectangle -16777216 false false 116 172 184 187
Rectangle -16777216 false false 144 173 161 186

luna-2.1
false
0
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 80 114 112 180 137 162 102 107
Polygon -2674135 true false 97 119 86 131 91 139 112 121 107 111
Polygon -7500403 true true 114 106 177 103 146 208
Polygon -2674135 true false 123 135 144 213 116 295 118 298 155 297 172 246 169 297 195 298 210 298 203 209 184 131
Line -16777216 false 141 211 199 211
Rectangle -16777216 false false 128 173 196 188
Rectangle -16777216 false false 129 174 146 187
Polygon -7500403 true true 185 129 114 186 99 153 178 104
Polygon -1184463 true false 118 39 145 39 155 49 160 62 152 106 154 129 152 140 193 164 189 135 180 118 192 73 194 38 168 16 142 14 125 24 113 35 119 38

luna-2.2
false
0
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 60 135 111 184 137 162 75 120
Polygon -2674135 true false 82 134 71 146 76 154 97 136 92 126
Polygon -7500403 true true 114 105 177 102 146 207
Polygon -2674135 true false 123 135 144 213 116 295 118 298 155 297 172 246 169 297 195 298 210 298 203 209 184 131
Line -16777216 false 141 211 199 211
Rectangle -16777216 false false 128 173 196 188
Rectangle -16777216 false false 129 174 146 187
Polygon -7500403 true true 185 129 114 186 99 153 178 104
Polygon -1184463 true false 118 39 145 39 155 49 160 62 152 106 154 129 152 140 193 164 189 135 180 118 192 73 194 38 168 16 142 14 125 24 113 35 119 38

luna-2.3
false
0
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 131 92 176 107
Polygon -7500403 true true 63 184 116 186 132 155 58 153
Polygon -7500403 true true 120 104 177 102 146 207
Polygon -2674135 true false 123 135 144 213 116 295 118 298 155 297 172 246 169 297 195 298 210 298 203 209 184 131
Line -16777216 false 141 211 199 211
Rectangle -16777216 false false 128 173 196 188
Rectangle -16777216 false false 129 174 146 187
Polygon -7500403 true true 185 131 114 188 99 155 178 106
Polygon -1184463 true false 114 37 146 28 161 43 176 58 166 107 167 129 175 149 189 162 185 133 182 116 188 71 190 36 164 14 138 12 121 22 109 33 115 36
Rectangle -2674135 true false 73 153 85 190

luna-3.1
true
0
Polygon -7500403 true true 105 135 195 135 180 180 120 180 120 150
Polygon -16777216 true false 152 164 202 130 199 279 110 277 103 135
Circle -7500403 true true 105 51 85
Rectangle -7500403 true true 132 128 168 144
Line -1 false 151 271 149 165
Polygon -7500403 true true 201 151 221 232 137 241 140 210 180 209 166 147 195 132
Polygon -7500403 true true 102 133 78 191 158 213 158 189 120 175 127 147 95 135
Line -16777216 false 120 75 145 79
Line -16777216 false 158 81 178 78
Circle -16777216 false false 131 82 10
Circle -16777216 false false 159 83 10
Polygon -2064490 true false 136 116 141 116 162 117 158 123 152 124 145 124 140 120
Line -1 false 142 119 159 119
Polygon -16777216 true false 102 136 124 165 132 164 127 134 103 135
Polygon -16777216 true false 169 137 168 157 175 160 184 134 170 134
Polygon -1184463 true false 153 56 132 59 122 77 117 94 120 122 128 144 103 150 103 112 103 71 116 55 160 42 182 44 198 52 211 105 213 159 207 167 193 174 169 182 159 169 183 150 185 113 185 94
Polygon -16777216 true false 104 83 122 60 142 51 163 48 179 52 199 59 199 50 184 35 166 25 149 25 127 31 116 51 115 58 80 76 80 94 99 82

luna-3.2
true
0
Polygon -7500403 true true 105 135 195 135 180 180 120 180 120 150
Polygon -16777216 true false 152 164 202 130 199 279 110 277 103 135
Circle -7500403 true true 106 50 85
Rectangle -7500403 true true 132 128 168 144
Line -1 false 151 271 149 165
Polygon -7500403 true true 201 151 221 232 137 241 140 210 180 209 166 147 195 132
Polygon -7500403 true true 102 133 78 191 158 213 158 189 120 175 127 147 95 135
Line -16777216 false 120 75 145 79
Line -16777216 false 158 81 178 78
Circle -16777216 false false 131 82 10
Circle -16777216 false false 159 83 10
Polygon -2064490 true false 147 116 150 115 154 116 159 121 152 128 147 127 142 120
Polygon -16777216 true false 102 136 124 165 132 164 127 134 103 135
Polygon -16777216 true false 169 137 168 157 175 160 184 134 170 134
Polygon -1184463 true false 153 56 132 59 122 77 117 94 120 122 128 144 103 150 103 112 103 71 116 55 160 42 182 44 198 52 211 105 213 159 207 167 193 174 169 182 159 169 183 150 185 113 185 94
Polygon -16777216 true false 104 83 122 60 142 51 163 48 179 52 199 59 199 50 184 35 166 25 149 25 127 31 116 51 115 58 80 76 80 94 99 82

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

sulli-1
false
0
Polygon -7500403 true true 195 105 225 210 195 210 165 120
Polygon -7500403 true true 105 105 75 210 105 210 135 120
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 105 121 210 105 330 135 330 151 240 165 330 195 330 181 210 196 105
Rectangle -7500403 true true 127 94 172 109
Polygon -14835848 true false 106 105 196 105 181 210 196 240 106 240 121 210 106 105
Polygon -13840069 true false 112 241 107 252 195 254 190 240
Polygon -16777216 true false 161 189 162 244 197 242 183 212 186 186 164 189
Polygon -16777216 true false 130 193 163 192 162 175 126 178 130 195
Polygon -16777216 true false 130 188 121 187 119 188 121 209 117 223 132 223 131 186
Polygon -16777216 true false 133 225 162 243 129 242 132 226
Polygon -16777216 true false 160 142 161 174 171 174 169 128 154 132 160 143
Polygon -16777216 true false 113 151 127 177 117 177 112 154
Polygon -16777216 true false 156 133 113 137 125 104 153 105 155 133
Polygon -16777216 true false 171 105 170 126 192 134 196 105 170 105
Polygon -6459832 true false 106 70 100 88 108 102 106 118 114 135 103 148 115 162 127 159 115 148 125 128 115 111 120 98 112 88 120 72 117 55 122 37 135 29 152 24 172 28 179 43 179 60 188 74 182 86 182 102 175 111 178 119 179 134 170 157 187 157 182 129 194 109 191 70 205 62 190 41 181 26 166 18 158 16 127 16 115 23 106 45 105 62 104 71
Polygon -1184463 true false 122 27 133 18 149 18 164 18 172 25 179 37 185 44 169 22 151 20 131 21

sulli-1.1
false
0
Polygon -7500403 true true 195 105 195 210 180 210 165 120
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 105 121 210 120 315 150 315 151 240 150 315 180 315 181 210 196 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 105 210 120 210 135 120
Polygon -14835848 true false 106 105 196 105 181 210 196 240 106 240 121 210 106 105
Polygon -13840069 true false 112 241 107 252 195 254 190 240
Polygon -16777216 true false 161 189 162 244 197 242 183 212 186 186 164 189
Polygon -16777216 true false 130 193 163 192 162 175 126 178 130 195
Polygon -16777216 true false 130 188 121 187 119 188 121 209 117 223 132 223 131 186
Polygon -16777216 true false 133 225 162 243 129 242 132 226
Polygon -16777216 true false 160 142 161 174 171 174 169 128 154 132 160 143
Polygon -16777216 true false 113 151 127 177 117 177 112 154
Polygon -16777216 true false 156 133 113 137 125 104 153 105 155 133
Polygon -16777216 true false 171 105 170 126 192 134 196 105 170 105
Polygon -6459832 true false 106 70 100 88 108 102 106 118 114 135 103 148 115 162 127 159 115 148 125 128 115 111 120 98 112 88 120 72 117 55 122 37 135 29 152 24 172 28 179 43 179 60 188 74 182 86 182 102 175 111 178 119 179 134 170 157 187 157 182 129 194 109 191 70 205 62 190 41 181 26 166 18 158 16 127 16 115 23 106 45 105 62 104 71
Polygon -1184463 true false 122 27 133 18 149 18 164 18 172 25 179 37 185 44 169 22 151 20 131 21
Line -16777216 false 150 255 150 330

sulli-1.2
false
0
Polygon -7500403 true true 207 92 172 104 181 116
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 105 121 210 90 300 135 300 151 240 165 300 195 300 210 300 181 210 196 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 193 105 210 90 225 120 180 165
Polygon -14835848 true false 106 105 196 105 181 210 196 240 106 240 121 210 106 105
Polygon -13840069 true false 112 241 107 252 195 254 190 240
Polygon -16777216 true false 161 189 162 244 197 242 183 212 186 186 164 189
Polygon -16777216 true false 130 193 163 192 162 175 126 178 130 195
Polygon -16777216 true false 130 188 121 187 119 188 121 209 117 223 132 223 131 186
Polygon -16777216 true false 133 225 162 243 129 242 132 226
Polygon -16777216 true false 160 142 161 174 171 174 169 128 154 132 160 143
Polygon -16777216 true false 113 151 127 177 117 177 112 154
Polygon -16777216 true false 156 133 113 137 125 104 153 105 155 133
Polygon -16777216 true false 171 105 170 126 192 134 196 105 170 105
Polygon -1184463 true false 122 30 133 21 149 21 164 21 172 28 179 40 185 47 169 25 151 23 131 24
Polygon -7500403 true true 107 108 106 221 132 222 132 165 106 109
Polygon -6459832 true false 106 71 100 89 108 103 106 119 114 136 103 149 115 163 127 160 115 149 125 129 115 112 120 99 112 89 120 73 117 56 122 38 135 30 152 25 172 29 179 44 179 61 188 75 182 87 182 103 175 112 178 120 179 135 170 158 187 158 182 130 194 110 191 71 205 63 190 42 181 27 166 19 158 17 127 17 115 24 106 46 105 63 104 72

sulli-1.3
false
0
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 105 121 210 90 300 135 300 151 240 165 300 210 300 181 210 196 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 225 210 195 210 165 120
Polygon -7500403 true true 107 103 75 165 105 165 137 118
Polygon -14835848 true false 106 105 196 105 181 210 196 240 106 240 121 210 106 105
Polygon -13840069 true false 112 241 107 252 195 254 190 240
Polygon -16777216 true false 161 189 162 244 197 242 183 212 186 186 164 189
Polygon -16777216 true false 130 193 163 192 162 175 126 178 130 195
Polygon -16777216 true false 130 188 121 187 119 188 121 209 117 223 132 223 131 186
Polygon -16777216 true false 133 225 162 243 129 242 132 226
Polygon -16777216 true false 160 142 161 174 171 174 169 128 154 132 160 143
Polygon -16777216 true false 113 151 127 177 117 177 112 154
Polygon -16777216 true false 156 133 113 137 125 104 153 105 155 133
Polygon -16777216 true false 171 105 170 126 192 134 196 105 170 105
Polygon -6459832 true false 195 69 201 87 193 101 195 117 187 134 198 147 186 161 174 158 186 147 176 127 186 110 181 97 189 87 181 71 184 54 179 36 166 28 149 23 129 27 122 42 122 59 113 73 119 85 119 101 126 110 123 118 122 133 131 156 114 156 119 128 107 108 110 69 96 61 111 40 120 25 135 17 136 14 174 15 186 22 195 44 196 61 197 70
Circle -6459832 true false 111 23 78
Polygon -6459832 true false 143 27 173 40 177 34 177 28 163 26
Polygon -7500403 true true 75 165 105 210 120 195 105 165

sulli-1.4
false
0
Polygon -7500403 true true 60 120 120 105 135 135 90 150 90 180 60 180
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 105 121 210 105 315 135 315 151 240 165 315 195 315 181 210 196 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 225 210 195 210 165 120
Polygon -14835848 true false 106 105 196 105 181 210 196 240 106 240 121 210 106 105
Polygon -13840069 true false 112 241 107 252 195 254 190 240
Polygon -16777216 true false 161 189 162 244 197 242 183 212 186 186 164 189
Polygon -16777216 true false 130 193 163 192 162 175 126 178 130 195
Polygon -16777216 true false 130 188 121 187 119 188 121 209 117 223 132 223 131 186
Polygon -16777216 true false 133 225 162 243 129 242 132 226
Polygon -16777216 true false 160 142 161 174 171 174 169 128 154 132 160 143
Polygon -16777216 true false 113 151 127 177 117 177 112 154
Polygon -16777216 true false 156 133 113 137 125 104 153 105 155 133
Polygon -16777216 true false 171 105 170 126 192 134 196 105 170 105
Polygon -6459832 true false 106 70 100 88 108 102 106 118 114 135 103 148 115 162 127 159 115 148 125 128 115 111 120 98 112 88 120 72 117 55 122 37 135 29 152 24 172 28 179 43 179 60 188 74 182 86 182 102 175 111 178 119 179 134 170 157 187 157 182 129 194 109 191 70 205 62 190 41 181 26 166 18 158 16 127 16 115 23 106 45 105 62 104 71
Polygon -1184463 true false 122 27 133 18 149 18 164 18 172 25 179 37 185 44 169 22 151 20 131 21

sulli-1.5
false
0
Polygon -7500403 true true 60 126 120 141 135 111 90 96 90 66 60 66
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 107 95 122 200 97 306 129 307 152 230 155 306 191 305 182 200 197 95
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 225 210 195 210 165 120
Polygon -14835848 true false 106 105 196 105 181 210 196 240 106 240 121 210 106 105
Polygon -13840069 true false 112 241 107 252 195 254 190 240
Polygon -16777216 true false 161 189 162 244 197 242 183 212 186 186 164 189
Polygon -16777216 true false 130 193 163 192 162 175 126 178 130 195
Polygon -16777216 true false 130 188 121 187 119 188 121 209 117 223 132 223 131 186
Polygon -16777216 true false 133 225 162 243 129 242 132 226
Polygon -16777216 true false 160 142 161 174 171 174 169 128 154 132 160 143
Polygon -16777216 true false 113 151 127 177 117 177 112 154
Polygon -16777216 true false 156 133 113 137 125 104 153 105 155 133
Polygon -16777216 true false 171 105 170 126 192 134 196 105 170 105
Polygon -6459832 true false 106 70 100 88 108 102 106 118 114 135 103 148 115 162 127 159 115 148 125 128 115 111 120 98 112 88 120 72 117 55 122 37 135 29 152 24 172 28 179 43 179 60 188 74 182 86 182 102 175 111 178 119 179 134 170 157 187 157 182 129 194 109 191 70 205 62 190 41 181 26 166 18 158 16 127 16 115 23 106 45 105 62 104 71
Polygon -1184463 true false 122 27 133 18 149 18 164 18 172 25 179 37 185 44 169 22 151 20 131 21

sulli-1.6
false
0
Polygon -7500403 true true 240 126 180 141 165 111 210 96 210 66 240 66
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 107 110 122 215 97 321 129 322 152 245 155 321 191 320 182 215 197 110
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 75 210 105 210 135 120
Polygon -14835848 true false 106 105 196 105 181 210 196 240 106 240 121 210 106 105
Polygon -13840069 true false 112 241 107 252 195 254 190 240
Polygon -16777216 true false 161 189 162 244 197 242 183 212 186 186 164 189
Polygon -16777216 true false 130 193 163 192 162 175 126 178 130 195
Polygon -16777216 true false 130 188 121 187 119 188 121 209 117 223 132 223 131 186
Polygon -16777216 true false 133 225 162 243 129 242 132 226
Polygon -16777216 true false 160 142 161 174 171 174 169 128 154 132 160 143
Polygon -16777216 true false 113 151 127 177 117 177 112 154
Polygon -16777216 true false 156 133 113 137 125 104 153 105 155 133
Polygon -16777216 true false 171 105 170 126 192 134 196 105 170 105
Polygon -6459832 true false 106 70 100 88 108 102 106 118 114 135 103 148 115 162 127 159 115 148 125 128 115 111 120 98 112 88 120 72 117 55 122 37 135 29 152 24 172 28 179 43 179 60 188 74 182 86 182 102 175 111 178 119 179 134 170 157 187 157 182 129 194 109 191 70 205 62 190 41 181 26 166 18 158 16 127 16 115 23 106 45 105 62 104 71
Polygon -1184463 true false 122 27 133 18 149 18 164 18 172 25 179 37 185 44 169 22 151 20 131 21

sulli-1.7
false
0
Circle -7500403 true true 117 21 80
Polygon -7500403 true true 174 180 159 120 189 105 204 150 234 150 234 180
Polygon -7500403 true true 107 110 122 215 97 321 129 322 152 245 155 321 191 320 182 215 197 110
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 108 75 213 105 213 135 123
Polygon -14835848 true false 106 105 196 105 181 210 196 240 106 240 121 210 106 105
Polygon -13840069 true false 112 241 107 252 195 254 190 240
Polygon -16777216 true false 161 189 162 244 197 242 183 212 186 186 164 189
Polygon -16777216 true false 130 193 163 192 162 175 126 178 130 195
Polygon -16777216 true false 130 188 121 187 119 188 121 209 117 223 132 223 131 186
Polygon -16777216 true false 133 225 162 243 129 242 132 226
Polygon -16777216 true false 160 142 161 174 171 174 169 128 154 132 160 143
Polygon -16777216 true false 113 151 127 177 117 177 112 154
Polygon -16777216 true false 156 133 113 137 125 104 153 105 155 133
Polygon -16777216 true false 171 105 170 126 192 134 196 105 170 105
Polygon -6459832 true false 176 49 161 49 156 42 144 46 139 58 137 81 138 95 140 116 137 134 149 143 137 168 146 182 122 182 123 156 116 148 118 128 112 92 116 78 104 59 113 36 133 13 173 17 189 38
Polygon -1184463 true false 151 16 146 43 153 41 165 12

sulli-1.8
false
0
Polygon -7500403 true true 105 105 120 105 105 135 90 120
Polygon -7500403 true true 195 105 225 210 195 210 165 120
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 105 121 210 105 330 135 330 151 240 165 330 195 330 181 210 196 105
Rectangle -7500403 true true 127 94 172 109
Polygon -14835848 true false 106 105 196 105 181 210 196 240 106 240 121 210 106 105
Polygon -13840069 true false 112 241 107 252 195 254 190 240
Polygon -16777216 true false 161 189 162 244 197 242 183 212 186 186 164 189
Polygon -16777216 true false 130 193 163 192 162 175 126 178 130 195
Polygon -16777216 true false 130 188 121 187 119 188 121 209 117 223 132 223 131 186
Polygon -16777216 true false 133 225 162 243 129 242 132 226
Polygon -16777216 true false 160 142 161 174 171 174 169 128 154 132 160 143
Polygon -16777216 true false 113 151 127 177 117 177 112 154
Polygon -16777216 true false 156 133 113 137 125 104 153 105 155 133
Polygon -16777216 true false 171 105 170 126 192 134 196 105 170 105
Polygon -6459832 true false 106 70 100 88 108 102 106 118 114 135 103 148 115 162 127 159 115 148 125 128 115 111 120 98 112 88 120 72 117 55 122 37 135 29 152 24 172 28 179 43 179 60 188 74 182 86 182 102 175 111 178 119 179 134 170 157 187 157 182 129 194 109 191 70 205 62 190 41 181 26 166 18 158 16 127 16 115 23 106 45 105 62 104 71
Polygon -1184463 true false 122 27 133 18 149 18 164 18 172 25 179 37 185 44 169 22 151 20 131 21
Polygon -7500403 true true 90 120 105 150 195 165 210 135

sulli-1.9
false
0
Polygon -7500403 true true 150 135 135 105 45 90 30 120
Polygon -7500403 true true 195 105 225 210 195 210 165 120
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 106 105 121 210 105 330 135 330 151 240 165 330 195 330 181 210 196 105
Rectangle -7500403 true true 127 94 172 109
Polygon -14835848 true false 106 105 196 105 181 210 196 240 106 240 121 210 106 105
Polygon -13840069 true false 112 241 107 252 195 254 190 240
Polygon -16777216 true false 161 189 162 244 197 242 183 212 186 186 164 189
Polygon -16777216 true false 130 193 163 192 162 175 126 178 130 195
Polygon -16777216 true false 130 188 121 187 119 188 121 209 117 223 132 223 131 186
Polygon -16777216 true false 133 225 162 243 129 242 132 226
Polygon -16777216 true false 160 142 161 174 171 174 169 128 154 132 160 143
Polygon -16777216 true false 113 151 127 177 117 177 112 154
Polygon -16777216 true false 156 133 113 137 125 104 153 105 155 133
Polygon -16777216 true false 171 105 170 126 192 134 196 105 170 105
Polygon -6459832 true false 106 70 100 88 108 102 106 118 114 135 103 148 115 162 127 159 115 148 125 128 115 111 120 98 112 88 120 72 117 55 122 37 135 29 152 24 172 28 179 43 179 60 188 74 182 86 182 102 175 111 178 119 179 134 170 157 187 157 182 129 194 109 191 70 205 62 190 41 181 26 166 18 158 16 127 16 115 23 106 45 105 62 104 71
Polygon -1184463 true false 122 27 133 18 149 18 164 18 172 25 179 37 185 44 169 22 151 20 131 21

sulli-2
false
0
Circle -7500403 true true 109 22 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 240 165 225 195 165 120
Polygon -7500403 true true 105 105 60 165 75 195 135 120
Polygon -2674135 true false 114 53 192 50 191 40 181 29 168 22 152 21 133 21 111 32 107 46 82 47 98 52 89 49 80 50 108 51
Polygon -1 true false 141 39 142 15 145 4 156 1 161 6 161 23 160 37 157 38 149 38
Polygon -1 true false 114 40 115 16 118 5 129 2 134 7 134 24 133 38 130 39 122 39
Polygon -6459832 true false 175 64 176 77 183 99 178 117 172 139 169 157 172 181 176 183 180 161 187 122 199 93 190 53 189 49 146 53 173 64
Polygon -6459832 true false 120 52 112 78 106 67 108 51
Polygon -2674135 true false 69 149 86 180 111 151 121 210 122 212 150 212 151 214 179 212 180 211 189 150 214 180 231 155 194 106 171 107 166 116 152 119 135 119 131 112 129 105 106 104 72 148
Circle -16777216 true false 127 141 8
Circle -16777216 true false 158 140 8
Polygon -16777216 true false 134 173 141 180 152 180 159 177 161 170 163 170 160 180 145 184 137 182 134 174
Polygon -2674135 true false 105 255 195 255 180 210 120 210 105 255
Line -16777216 false 120 210 180 210
Line -16777216 false 114 29 115 11
Line -16777216 false 119 5 115 12
Line -16777216 false 119 4 128 3
Line -16777216 false 125 5 132 6
Line -16777216 false 133 8 133 19
Line -16777216 false 141 17 146 4
Line -16777216 false 146 4 153 2
Line -16777216 false 151 2 161 5
Line -16777216 false 161 7 161 18

sulli-2.1
false
0
Polygon -7500403 true true 110 102 112 205 124 205
Polygon -7500403 true true 131 210 101 300 135 300 150 240 150 300 180 300 180 210
Polygon -7500403 true true 111 105 185 106 169 146 143 150 119 109
Polygon -2674135 true false 111 101 119 172 120 208 121 210 149 210 150 212 178 210 179 209 183 170 185 176 215 163 193 104 170 105 165 114 151 117 134 117 130 110 128 103 111 101 111 102
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 127 94 172 109
Polygon -2674135 true false 114 53 192 50 191 40 181 29 168 22 152 21 133 21 111 32 107 46 82 47 98 52 89 49 80 50 108 51
Polygon -1 true false 141 39 142 15 145 4 156 1 161 6 161 23 160 37 157 38 149 38
Polygon -1 true false 114 40 115 16 118 5 129 2 134 7 134 24 133 38 130 39 122 39
Polygon -6459832 true false 175 64 176 77 183 99 178 117 172 139 169 157 172 181 176 183 180 161 187 122 199 93 190 53 189 49 146 53 173 64
Polygon -6459832 true false 120 52 112 78 106 67 108 51
Circle -16777216 true false 127 141 8
Circle -16777216 true false 158 140 8
Polygon -16777216 true false 134 173 141 180 152 180 159 177 161 170 163 170 160 180 145 184 137 182 134 174
Polygon -2674135 true false 105 255 195 255 180 210 120 210 105 255
Line -16777216 false 120 210 180 210
Line -16777216 false 114 29 115 15
Line -16777216 false 115 16 118 5
Line -16777216 false 119 5 127 1
Line -16777216 false 128 2 133 6
Line -16777216 false 133 7 133 19
Line -16777216 false 142 19 143 6
Line -16777216 false 144 5 153 0
Line -16777216 false 156 0 163 5
Line -16777216 false 160 7 160 19
Line -16777216 false 189 171 186 130
Polygon -7500403 true true 224 193 214 196 164 220 150 193 214 161

sulli-2.2
false
0
Polygon -7500403 true true 131 210 101 300 135 300 150 240 150 300 180 300 180 210
Polygon -7500403 true true 111 105 185 106 169 146 143 150 119 109
Polygon -2674135 true false 102 168 111 175 111 173 120 208 121 210 149 210 150 212 178 210 179 209 183 170 185 176 215 163 193 104 170 105 165 114 151 117 134 117 130 110 128 103 105 102 85 160
Circle -7500403 true true 109 22 80
Rectangle -7500403 true true 127 94 172 109
Polygon -2674135 true false 114 53 192 50 191 40 181 29 168 22 152 21 133 21 111 32 107 46 82 47 98 52 89 49 80 50 108 51
Polygon -1 true false 141 39 142 15 145 4 156 1 161 6 161 23 160 37 157 38 149 38
Polygon -1 true false 114 40 115 16 118 5 129 2 134 7 134 24 133 38 130 39 122 39
Polygon -6459832 true false 175 64 176 77 183 99 178 117 172 139 169 157 172 181 176 183 180 161 187 122 199 93 190 53 189 49 146 53 173 64
Polygon -6459832 true false 120 52 112 78 106 67 108 51
Circle -16777216 true false 127 141 8
Circle -16777216 true false 158 140 8
Polygon -16777216 true false 134 173 141 180 152 180 159 177 161 170 163 170 160 180 145 184 137 182 134 174
Polygon -2674135 true false 105 255 195 255 180 210 120 210 105 255
Line -16777216 false 120 210 180 210
Line -16777216 false 189 171 186 130
Polygon -7500403 true true 224 193 214 196 181 206 165 180 215 164
Polygon -7500403 true true 77 192 87 195 120 205 135 180 86 163
Line -16777216 false 111 171 114 130
Line -16777216 false 114 29 115 15
Line -16777216 false 115 16 118 5
Line -16777216 false 119 5 127 1
Line -16777216 false 128 2 133 6
Line -16777216 false 133 7 133 19
Line -16777216 false 142 19 143 6
Line -16777216 false 144 5 153 0
Line -16777216 false 156 0 163 5
Line -16777216 false 160 7 160 19

sulli-2.3
false
0
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 131 210 101 300 135 300 150 240 150 300 180 300 180 210
Polygon -7500403 true true 111 105 185 106 169 146 143 150 119 109
Polygon -2674135 true false 120 210 120 208 121 210 149 210 150 212 178 210 179 209 180 210 193 104 170 105 165 114 151 117 134 117 130 110 128 103 105 105 120 210
Circle -7500403 true true 109 22 80
Polygon -2674135 true false 186 53 108 50 109 40 119 29 132 22 148 21 167 21 189 32 193 46 218 47 202 52 211 49 220 50 192 51
Polygon -1 true false 141 39 142 15 145 4 156 1 161 6 161 23 160 37 157 38 149 38
Polygon -1 true false 186 40 185 16 182 5 171 2 166 7 166 24 167 38 170 39 178 39
Polygon -6459832 true false 120 52 112 78 106 67 108 51
Polygon -2674135 true false 105 255 195 255 180 210 120 210 106 255
Line -16777216 false 120 210 180 210
Line -16777216 false 186 29 185 15
Line -16777216 false 185 16 182 5
Line -16777216 false 181 5 173 1
Line -16777216 false 172 2 167 6
Line -16777216 false 167 7 167 19
Line -16777216 false 142 19 143 6
Line -16777216 false 144 5 153 0
Line -16777216 false 156 0 163 5
Line -16777216 false 160 7 160 19
Line -16777216 false 174 156 123 141
Polygon -7500403 true true 127 141 205 166 210 136 127 111
Polygon -2674135 true false 123 140 174 157 180 127 123 110
Line -16777216 false 125 113 182 127
Polygon -6459832 true false 125 63 124 76 117 98 122 116 128 138 131 156 128 180 124 182 120 160 113 121 101 92 110 52 111 48 154 52 127 63

sulli-2.4
false
0
Polygon -7500403 true true 203 96 156 96 169 113
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 131 210 101 300 135 300 150 240 150 300 180 300 180 210
Polygon -7500403 true true 111 105 185 106 169 146 143 150 119 109
Polygon -2674135 true false 120 211 120 209 121 211 149 211 150 213 178 211 179 210 180 211 193 105 170 106 165 115 151 118 134 118 130 111 128 104 105 106 120 211
Circle -7500403 true true 109 22 80
Polygon -2674135 true false 186 53 108 50 109 40 119 29 132 22 148 21 167 21 189 32 193 46 218 47 202 52 211 49 220 50 192 51
Polygon -1 true false 141 39 142 15 145 4 156 1 161 6 161 23 160 37 157 38 149 38
Polygon -1 true false 186 40 185 16 182 5 171 2 166 7 166 24 167 38 170 39 178 39
Polygon -6459832 true false 120 52 112 78 106 67 108 51
Polygon -2674135 true false 105 255 195 255 180 210 120 210 106 255
Line -16777216 false 120 210 180 210
Line -16777216 false 186 29 185 15
Line -16777216 false 185 16 182 5
Line -16777216 false 181 5 173 1
Line -16777216 false 172 2 167 6
Line -16777216 false 167 7 167 19
Line -16777216 false 142 19 143 6
Line -16777216 false 144 5 153 0
Line -16777216 false 156 0 163 5
Line -16777216 false 160 7 160 19
Polygon -7500403 true true 125 140 208 125 207 96 125 110
Polygon -2674135 true false 123 141 125 142 181 132 180 101 123 111
Line -16777216 false 185 99 126 110
Line -16777216 false 184 129 123 142
Polygon -6459832 true false 125 63 124 76 117 98 122 116 128 138 131 156 128 180 124 182 120 160 113 121 101 92 110 52 111 48 154 52 127 63

sulli-3.1
true
0
Polygon -5825686 true false 58 166 94 209 53 247 17 218
Polygon -5825686 true false 232 167 196 210 237 248 271 217
Circle -7500403 true true 93 41 106
Rectangle -7500403 true true 113 135 180 167
Line -6459832 false 105 64 121 58
Line -6459832 false 176 59 195 67
Circle -16777216 false false 114 73 16
Circle -16777216 false false 163 73 16
Line -6459832 false 121 57 137 63
Line -6459832 false 158 64 175 60
Polygon -5825686 true false 104 136 150 164 188 143 217 143 235 168 225 250 90 250 72 252 59 166 74 139
Line -16777216 false 136 194 76 153
Line -16777216 false 135 191 152 178
Line -16777216 false 168 196 228 163
Line -16777216 false 148 172 170 197
Circle -1 true false 192 167 10
Circle -1 true false 110 168 8
Circle -1 true false 118 174 8
Circle -1 true false 128 179 8
Circle -1 true false 93 155 8
Circle -1 true false 102 160 10
Circle -1 true false 180 173 10
Circle -1 true false 168 181 10
Circle -1 true false 205 161 10
Polygon -6459832 true false 133 43 195 75 198 78 200 128 191 150 187 179 185 225 192 231 249 228 243 220 236 180 231 101 228 65 204 32 163 16 137 16 90 40 80 69 74 99 84 109 95 74 116 50
Polygon -2064490 true false 135 120 155 120 150 128 149 131 139 130 137 128
Line -1 false 137 124 151 123

sulli-3.2
true
0
Polygon -5825686 true false 58 166 94 209 53 247 17 218
Polygon -5825686 true false 232 167 196 210 237 248 271 217
Circle -7500403 true true 93 41 106
Rectangle -7500403 true true 113 135 180 167
Line -6459832 false 105 64 121 58
Line -6459832 false 176 59 195 67
Circle -16777216 false false 114 73 16
Circle -16777216 false false 163 73 16
Line -6459832 false 121 57 137 63
Line -6459832 false 158 64 175 60
Polygon -5825686 true false 104 136 150 164 188 143 217 143 235 168 225 250 90 250 72 252 59 166 74 139
Line -16777216 false 136 194 76 153
Line -16777216 false 135 191 152 178
Line -16777216 false 168 196 228 163
Line -16777216 false 148 172 170 197
Circle -1 true false 192 167 10
Circle -1 true false 110 168 8
Circle -1 true false 118 174 8
Circle -1 true false 128 179 8
Circle -1 true false 93 155 8
Circle -1 true false 102 160 10
Circle -1 true false 180 173 10
Circle -1 true false 168 181 10
Circle -1 true false 205 161 10
Polygon -6459832 true false 133 43 195 75 198 78 200 128 191 150 187 179 185 225 192 231 249 228 243 220 236 180 231 101 228 65 204 32 163 16 137 16 90 40 80 69 74 99 84 109 95 74 116 50
Polygon -2064490 true false 143 118 150 120 150 128 149 131 143 131 138 124

tank
true
0
Rectangle -7500403 true true 144 0 159 105
Rectangle -6459832 true false 195 45 255 255
Rectangle -16777216 false false 195 45 255 255
Rectangle -6459832 true false 45 45 105 255
Rectangle -16777216 false false 45 45 105 255
Line -16777216 false 45 75 255 75
Line -16777216 false 45 105 255 105
Line -16777216 false 45 60 255 60
Line -16777216 false 45 240 255 240
Line -16777216 false 45 225 255 225
Line -16777216 false 45 195 255 195
Line -16777216 false 45 150 255 150
Polygon -7500403 true true 90 60 60 90 60 240 120 255 180 255 240 240 240 90 210 60
Rectangle -16777216 false false 135 105 165 120
Polygon -16777216 false false 135 120 105 135 101 181 120 225 149 234 180 225 199 182 195 135 165 120
Polygon -16777216 false false 240 90 210 60 211 246 240 240
Polygon -16777216 false false 60 90 90 60 89 246 60 240
Polygon -16777216 false false 89 247 116 254 183 255 211 246 211 237 89 236
Rectangle -16777216 false false 90 60 210 90
Rectangle -16777216 false false 143 0 158 105

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

title
true
0
Polygon -1 true false 15 100 30 40 45 100 60 40 75 115 90 40 105 100 120 17 135 100 148 52 165 100 191 25 195 100 219 18 225 100 253 45 255 100 289 53 285 100 319 90 285 130 330 143 285 160 322 191 285 175 299 219 275 188 268 189 280 235 242 189 228 243 209 191 180 235 165 190 150 235 120 190 120 235 105 190 90 235 75 190 60 235 45 190 15 235 15 190 -31 202 15 160 -38 158 15 130 -30 127 9 113 -20 70
Rectangle -1 true false 12 99 288 190
Line -5825686 false 23 121 24 166
Line -5825686 false 46 125 47 171
Line -5825686 false 26 144 45 144
Circle -5825686 false false 57 137 22
Line -5825686 false 72 122 98 123
Line -5825686 false 85 123 85 176
Circle -5825686 false false 111 149 22
Circle -1 true false 93 142 28
Circle -5825686 false false 110 127 22
Circle -1 true false 117 132 16
Line -5825686 false 139 130 139 161
Line -5825686 false 154 133 155 164
Circle -5825686 false false 139 153 17
Circle -1 true false 140 148 14
Line -5825686 false 161 133 160 174
Line -5825686 false 162 135 169 145
Line -5825686 false 178 137 172 145
Line -5825686 false 180 137 180 173
Line -5825686 false 184 129 185 167
Line -5825686 false 185 130 194 137
Line -5825686 false 205 129 196 135
Line -5825686 false 207 131 208 174
Line -5825686 false 218 130 219 174
Line -5825686 false 217 132 239 131
Line -5825686 false 220 155 226 155
Line -5825686 false 221 172 239 173
Line -5825686 false 247 132 247 174
Circle -5825686 false false 246 129 23
Line -5825686 false 249 148 266 170
Circle -5825686 false false 198 100 24
Rectangle -1 true false 202 100 216 127
Line -5825686 false 205 105 206 117
Line -5825686 false 207 107 214 107
Line -5825686 false 211 112 206 112
Line -5825686 false 226 120 232 106
Line -5825686 false 234 118 224 108

title-2
true
0
Rectangle -1 true false 30 105 270 180
Line -5825686 false 46 116 40 130
Line -5825686 false 48 115 54 132
Line -5825686 false 43 124 50 124
Line -5825686 false 57 117 57 129
Line -5825686 false 56 118 63 127
Line -5825686 false 66 116 66 128
Line -5825686 false 69 116 82 116
Line -5825686 false 75 116 76 130
Line -5825686 false 70 131 81 131
Line -5825686 false 85 132 86 119
Line -5825686 false 93 123 89 119
Line -5825686 false 100 122 94 123
Line -5825686 false 101 131 101 122
Line -5825686 false 111 120 105 130
Line -5825686 false 117 131 114 119
Line -5825686 false 108 126 114 126
Line -5825686 false 120 117 132 117
Line -5825686 false 126 133 127 117
Line -5825686 false 136 117 143 117
Line -5825686 false 141 130 140 119
Line -5825686 false 138 131 145 131
Circle -5825686 false false 149 118 14
Line -5825686 false 169 129 169 119
Line -5825686 false 179 129 171 120
Line -5825686 false 182 118 182 131
Circle -5825686 false false 124 149 10
Circle -5825686 false false 124 158 10
Line -5825686 false 125 152 124 166
Circle -5825686 false false 134 153 16
Line -5825686 false 149 149 154 157
Line -5825686 false 159 149 152 169
Line -5825686 false 163 151 170 151
Line -5825686 false 166 154 166 166
Line -5825686 false 162 167 169 167
Line -5825686 false 173 154 175 169
Line -5825686 false 174 155 182 167
Line -5825686 false 183 155 183 167
Line -5825686 false 203 155 200 151
Line -5825686 false 200 151 194 151
Line -5825686 false 195 151 192 155
Line -5825686 false 191 157 191 168
Line -5825686 false 193 170 197 171
Line -5825686 false 203 168 199 171
Line -5825686 false 198 161 202 161
Line -5825686 false 203 161 203 167
Line -5825686 false 212 129 212 113
Line -5825686 false 221 118 214 115
Line -5825686 false 221 119 227 113
Line -5825686 false 228 129 228 113
Line -5825686 false 245 133 236 117
Line -5825686 false 250 115 245 133

title-3
true
0
Rectangle -1 true false 16 106 271 196
Line -5825686 false 24 115 39 115
Line -5825686 false 32 116 32 124
Line -5825686 false 28 125 39 125
Circle -5825686 false false 49 114 14
Circle -1 true false 54 114 12
Circle -5825686 false false 62 114 14
Circle -5825686 false false 78 114 14
Circle -1 true false 78 109 12
Line -5825686 false 97 116 98 127
Line -5825686 false 99 127 105 127
Line -5825686 false 112 116 111 127
Circle -5825686 false false 107 114 15
Circle -1 true false 104 115 8
Line -5825686 false 126 115 126 126
Line -5825686 false 135 124 126 117
Line -5825686 false 136 109 136 125
Line -5825686 false 144 110 144 115
Line -5825686 false 149 114 164 114
Line -5825686 false 156 128 158 115
Circle -5825686 false false 179 111 15
Line -5825686 false 182 111 183 127
Circle -1 true false 170 113 13
Circle -5825686 false false 196 111 16
Line -5825686 false 29 138 42 138
Line -5825686 false 36 139 37 156
Line -5825686 false 46 140 46 150
Line -5825686 false 46 146 53 147
Line -5825686 false 54 139 54 149
Line -5825686 false 61 141 61 155
Line -5825686 false 61 140 70 139
Line -5825686 false 62 147 65 147
Line -5825686 false 61 157 70 157
Line -5825686 false 92 145 97 153
Line -5825686 false 83 139 86 154
Line -5825686 false 87 152 90 146
Line -5825686 false 100 139 99 152
Line -5825686 false 112 155 112 141
Line -5825686 false 107 148 111 148
Line -5825686 false 106 156 105 141
Circle -5825686 false false 117 141 14
Line -5825686 false 135 139 137 154
Line -5825686 false 137 154 144 154
Line -5825686 false 147 138 147 155
Line -5825686 false 157 141 146 139
Line -5825686 false 149 146 154 146
Line -5825686 false 148 154 155 154
Line -5825686 false 173 136 185 136
Line -5825686 false 181 152 180 135
Line -5825686 false 190 152 190 140
Line -5825686 false 197 154 197 139
Line -5825686 false 192 147 198 147
Line -5825686 false 199 138 206 137
Line -5825686 false 202 155 209 155
Line -5825686 false 204 139 206 154
Line -5825686 false 216 138 216 154
Line -5825686 false 214 139 223 154
Line -5825686 false 226 135 225 153
Line -5825686 false 249 139 245 136
Line -5825686 false 236 137 246 135
Line -5825686 false 234 139 234 150
Line -5825686 false 234 152 240 156
Line -5825686 false 242 156 247 155
Line -5825686 false 242 149 247 148
Line -5825686 false 248 149 248 156
Line -5825686 false 132 168 155 169
Line -5825686 false 139 170 141 187
Line -5825686 false 158 177 163 169
Line -5825686 false 164 170 173 175
Line -5825686 false 178 168 206 168
Line -5825686 false 196 168 195 192

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

victoria-1
false
0
Polygon -7500403 true true 195 105 240 165 225 195 165 120
Polygon -7500403 true true 105 105 60 165 75 195 135 120
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -6459832 true false 109 161 124 163 124 49 176 49 178 160 197 160 196 37 181 23 167 17 140 17 127 17 117 22 111 32 106 42 104 55 108 162

victoria-1.1
false
0
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 240 165 210 165 165 120
Polygon -7500403 true true 105 105 60 165 90 165 135 120
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -6459832 true false 109 161 124 163 124 49 176 49 178 160 197 160 196 37 181 23 167 17 140 17 127 17 117 22 111 32 106 42 104 55 108 162
Polygon -7500403 true true 210 150 180 180 195 195 240 165 225 150 210 150
Polygon -7500403 true true 60 165 105 195 120 180 90 150

victoria-1.10
false
0
Circle -7500403 true true 110 20 80
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 225 135 225 180 165 120
Polygon -7500403 true true 105 105 60 165 75 195 135 120
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -6459832 true false 109 161 124 163 124 49 176 49 178 160 197 160 196 37 181 23 167 17 140 17 127 17 117 22 111 32 106 42 104 55 108 162
Polygon -7500403 true true 75 105 60 165 75 195 90 165 105 105 75 105 90 120
Line -16777216 false 90 165 105 105
Polygon -7500403 true true 225 135 270 120 270 150 225 180
Polygon -7500403 true true 90 300 135 300 150 240 108 243 90 300
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -7500403 true true 150 270 165 300 210 300 180 255 180 225 150 225
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241

victoria-1.11
false
0
Polygon -7500403 true true 90 180 90 150 135 135 135 105 60 120 60 180
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 240 165 225 195 165 120
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -6459832 true false 109 161 124 163 124 49 176 49 178 160 197 160 196 37 181 23 167 17 140 17 127 17 117 22 111 32 106 42 104 55 108 162

victoria-1.12
false
0
Polygon -7500403 true true 90 69 90 99 135 114 135 144 60 129 60 69
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 240 165 225 195 165 120
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -6459832 true false 109 161 124 163 124 49 176 49 178 160 197 160 196 37 181 23 167 17 140 17 127 17 117 22 111 32 106 42 104 55 108 162

victoria-1.13
false
0
Polygon -7500403 true true 210 69 210 99 165 114 165 144 240 129 240 69
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 90 210 120 210 135 120
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -6459832 true false 180 60 195 60 187 27 159 20 138 20 110 35 106 60 107 85 115 119 118 141 121 151 149 146 149 121 144 82 144 58 150 46 156 47 169 49

victoria-1.14
false
0
Polygon -7500403 true true 231 150 201 150 186 105 156 105 171 180 231 180
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 90 210 120 210 135 120
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -6459832 true false 180 60 195 60 187 27 159 20 138 20 110 35 106 60 107 85 115 119 118 141 121 151 149 146 149 121 144 82 144 58 150 46 156 47 169 49

victoria-1.15
false
0
Polygon -7500403 true true 180 105 165 210 195 210 195 120
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 90 165 120 165 135 120
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -7500403 true true 90 165 218 150 213 117 121 132
Polygon -6459832 true false 109 161 124 163 124 49 176 49 178 160 197 160 196 37 181 23 167 17 140 17 127 17 117 22 111 32 106 42 104 55 108 162

victoria-1.16
false
0
Polygon -7500403 true true 135 135 30 120 30 90 135 105
Polygon -7500403 true true 180 105 165 210 195 210 195 120
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -6459832 true false 109 161 124 163 124 49 176 49 178 160 197 160 196 37 181 23 167 17 140 17 127 17 117 22 111 32 106 42 104 55 108 162

victoria-1.2
true
0
Polygon -2064490 true false 95 165 105 300 195 300 203 166
Circle -7500403 true true 114 94 70
Rectangle -7500403 true true 128 156 173 171
Polygon -16777216 true false 150 240 150 300 105 300 150 240
Polygon -1 true false 150 300 195 300 150 240
Polygon -6459832 true false 107 152 112 184 102 223 107 239 118 219 120 178 127 160 123 149 118 114 122 97 120 116 171 113 180 112 176 144 177 157 184 189 191 237 197 238 190 113 180 85 155 78 135 76 122 88 107 97 107 150
Polygon -7500403 true true 204 164 214 245 149 179 164 149 201 198 201 165
Polygon -7500403 true true 95 165 85 246 150 180 135 150 98 199 98 166

victoria-1.3
true
0
Polygon -2064490 true false 95 165 105 300 195 300 203 166
Circle -7500403 true true 114 94 70
Rectangle -7500403 true true 128 156 173 171
Polygon -16777216 true false 150 240 150 300 105 300 150 240
Polygon -1 true false 150 300 195 300 150 240
Polygon -6459832 true false 107 152 112 184 102 223 107 239 118 219 120 178 127 160 123 149 118 114 122 97 120 116 171 113 180 112 176 144 177 157 184 189 191 237 197 238 190 113 180 85 155 78 135 76 122 88 107 97 107 150
Polygon -7500403 true true 201 168 209 165 233 249 218 254 205 258 164 181 190 177 217 222 199 192
Polygon -7500403 true true 90 168 98 165 122 249 107 254 94 258 53 181 79 177 106 222 88 192

victoria-1.4
true
0
Polygon -2064490 true false 95 165 105 300 195 300 203 166
Circle -7500403 true true 114 94 70
Rectangle -7500403 true true 128 156 173 171
Polygon -16777216 true false 150 240 150 300 105 300 150 240
Polygon -1 true false 150 300 195 300 150 240
Polygon -6459832 true false 107 152 112 184 102 223 107 239 118 219 120 178 127 160 123 149 118 114 122 97 120 116 171 113 180 112 176 144 177 157 184 189 191 237 197 238 190 113 180 85 155 78 135 76 122 88 107 97 107 150
Polygon -7500403 true true 88 167 96 164 119 242 105 253 92 257 45 255 45 230 86 231 88 192
Polygon -7500403 true true 193 167 201 164 224 242 210 253 197 257 150 255 150 230 191 231 193 192

victoria-1.5
false
0
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 90 165 120 165 135 120
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -7500403 true true 165 165 225 210 240 195 195 150
Polygon -7500403 true true 90 165 150 210 165 195 120 150
Polygon -7500403 true true 180 105 165 165 195 165 195 120
Polygon -6459832 true false 109 161 124 163 124 49 176 49 178 160 197 160 196 37 181 23 167 17 140 17 127 17 117 22 111 32 106 42 104 55 108 162

victoria-1.6
false
0
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 90 180 120 165 135 120
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -7500403 true true 90 180 165 150 165 120 105 150
Polygon -7500403 true true 150 180 225 150 225 120 165 150
Polygon -7500403 true true 195 105 150 180 195 165 195 105
Polygon -6459832 true false 109 161 124 163 124 49 176 49 178 160 197 160 196 37 181 23 167 17 140 17 127 17 117 22 111 32 106 42 104 55 108 162

victoria-1.7
false
0
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 90 180 120 165 135 120
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -7500403 true true 120 180 120 120 90 120 90 180
Polygon -7500403 true true 180 180 180 120 150 120 150 180
Polygon -6459832 true false 109 161 124 163 124 49 176 49 178 160 197 160 196 37 181 23 167 17 140 17 127 17 117 22 111 32 106 42 104 55 108 162
Polygon -7500403 true true 180 105 150 180 180 180 180 105

victoria-1.8
false
0
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 90 180 120 180 135 120
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -7500403 true true 105 150 60 150 60 180 90 180
Polygon -6459832 true false 109 161 124 163 124 49 176 49 178 160 197 160 196 37 181 23 167 17 140 17 127 17 117 22 111 32 106 42 104 55 108 162
Polygon -7500403 true true 180 105 150 180 180 180 180 105
Polygon -7500403 true true 165 150 120 150 120 180 150 180

victoria-1.9
false
0
Polygon -7500403 true true 90 176 90 221 120 221 120 176
Circle -7500403 true true 110 20 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 105 105 90 180 120 180 135 120
Polygon -16777216 true false 150 165 120 210 105 252 147 254 150 242
Polygon -1 true false 151 166 181 211 192 246 155 254 150 241
Polygon -2064490 true false 120 210 105 105 195 105 180 210 150 165
Polygon -6459832 true false 109 161 124 163 124 49 176 49 178 160 197 160 196 37 181 23 167 17 140 17 127 17 117 22 111 32 106 42 104 55 108 162
Polygon -7500403 true true 180 105 150 180 180 180 180 105
Polygon -7500403 true true 150 178 150 223 180 223 180 178

victoria-2
false
0
Circle -7500403 true true 109 21 80
Polygon -7500403 true true 105 105 120 210 90 300 105 300 135 300 150 240 165 300 195 300 210 300 180 210 195 105
Rectangle -7500403 true true 127 94 172 109
Polygon -7500403 true true 195 105 240 165 225 195 165 120
Polygon -7500403 true true 105 105 60 165 75 195 135 120
Polygon -6459832 true false 114 79 136 38 179 62 175 132 193 139 193 42 178 25 157 18 133 23 114 31 108 62
Polygon -2674135 true false 111 45 166 32 185 37 188 31 179 12 171 8 111 18 98 21 98 38 108 47
Polygon -2674135 true false 105 105 195 105 180 210 195 255 105 255 120 210 105 120
Line -16777216 false 150 105 150 165
Rectangle -2064490 true false 120 225 135 225
Rectangle -2064490 true false 181 232 189 242
Rectangle -2064490 true false 111 232 119 242
Rectangle -2064490 true false 115 218 123 228
Rectangle -2064490 true false 177 218 185 228
Rectangle -2064490 true false 119 206 127 216
Rectangle -2064490 true false 173 206 181 216
Polygon -2674135 true false 60 165 75 195 92 174 72 150 60 165

victoria-3.1
true
0
Circle -7500403 true true 85 72 130
Circle -1184463 false false 53 159 48
Circle -1184463 false false 194 159 45
Polygon -6459832 true false 94 197 89 132 108 101 131 100 144 102 158 110 169 110 182 102 203 100 215 122 214 210 232 132 217 83 177 57 133 54 128 35 115 35 100 51 106 69 76 93 68 122 72 184
Circle -16777216 false false 118 112 24
Circle -16777216 false false 173 113 24
Polygon -2064490 true false 142 171 155 169 159 183 146 181 141 177
Rectangle -7500403 true true 124 196 178 212
Polygon -16777216 true false 123 209 70 218 100 286 202 285 229 212
Polygon -1184463 true false 121 211 124 211 152 235 179 213 185 211 152 239

victoria-3.2
true
0
Circle -7500403 true true 85 72 130
Circle -1184463 false false 53 159 48
Circle -1184463 false false 194 159 45
Polygon -6459832 true false 94 197 89 132 108 101 131 100 144 102 158 110 169 110 182 102 203 100 215 122 214 210 232 132 217 83 177 57 133 54 128 35 115 35 100 51 106 69 76 93 68 122 72 184
Circle -16777216 false false 118 112 24
Circle -16777216 false false 173 113 24
Polygon -2064490 true false 144 172 153 174 161 175 154 182 146 181 145 177
Rectangle -7500403 true true 124 196 178 212
Polygon -16777216 true false 123 209 70 218 100 286 202 285 229 212
Polygon -1184463 true false 121 211 124 211 152 235 179 213 185 211 152 239

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270

@#$#@#$#@
NetLogo 5.0.4
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 1.0 0.0
0.0 1 1.0 0.0
0.2 0 1.0 0.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180

@#$#@#$#@
0
@#$#@#$#@
