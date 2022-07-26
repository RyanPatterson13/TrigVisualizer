--The myShapes model has a case expression so that the visuals can vary based on what page the user navigates to
myShapes model = case model.state of
          --Visuals for the starting menu
          Menu -> [
              rect 220 150
              |> filled (rgb 200 250 255)
              ,
              oval 100 40
              |> filled green
              |> move (-60, -60)
              ,
              oval 160 60
              |> filled green
              |> move (50, -60)
              ,
              circle 30
              |> filled lightYellow
              |> move (-80, 60)
              ,
              cloud
              |> move (-30, 20)
              |> move (0,(2 * sin(model.time)))
              ,
              cloud
              |> move (50, 30)
              |> move (0,(2 * cos(model.time)))
              ,

              text "Trig Visualizer"
              |> filled black
              |> move (-40, 40)


              ,button MoveToLesson "Lesson" lightBlue
              |> scale 0.5
              |> move (-40, 0)

              ,button MoveToTry "Try for Yourself" green
              |> scale 0.5

              ,button MoveToWalkthrough "Walkthrough" pink
              |> scale 0.5
              |> move (40, 0)

              ,button MoveToResources "Other Resources" white
              |> scale 0.3
              |> move (70, -50)
              ]
          --Visuals for the Lesson page
          Lesson -> [
                rect 220 150
                |> filled (rgb 200 240 255)
                ,
                trianglepattern
                ] ++
                --This case expression accounts fot each page within the Lesson section
                --LessonHome includes buttons to navigate to the 6 lessons, each of which describe tips to use when proving identities
                case model.lessonState of
                LessonHome ->
                    [
                    text "Lesson"
                    |> filled black
                    |> scale 0.6
                    |> move (-20, 40)
                    ,button MoveToMenu "Menu" red
                    |> scale 0.2
                    |> move (-80, -50)
                    ,button MoveToLesson1 "           1" (rgb 100 65 245)
                    |> move (-80, 0)
                    |> scale 0.6
                    ,button MoveToLesson2 "           2" (rgb 100 65 245)
                    |> scale 0.6
                    ,button MoveToLesson3 "           3" (rgb 100 65 245)
                    |> move (80, 0)
                    |> scale 0.6
                    ,button MoveToLesson4 "           4" (rgb 100 65 245)
                    |> move (-80, -20)
                    |> scale 0.6
                    ,button MoveToLesson5 "           5" (rgb 100 65 245)
                    |> move (0, -20)
                    |> scale 0.6
                    ,button MoveToLesson6 "           6" (rgb 100 65 245)
                    |> move (80, -20)
                    |> scale 0.6
                    ]
                    
                Lesson1 ->
                    [
                    text "Lesson #1"
                    |> filled black
                    |> scale 0.6
                    |> move (-20, 40)
                    ,
                    text "Sometimes, factoring out a common term will help interpreting the identity."
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 20)
                    ,
                    text "tan(x) - tan(x)sin^2(x) = tan(x)cos^2(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 10)
                    ,
                    text "tan(x)(1 - sin^2(x)) = tan(x)cos^2(x)     ***"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 5)
                    ,
                    text "tan(x)cos^2(x) = tan(x)cos^2(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 0)
                    ,
                    button MoveToLesson "Back" red
                    |> scale 0.2
                    |> move (-80, -50)
                    ]
                    
                Lesson2 ->
                    [
                    text "Lesson #2"
                    |> filled black
                    |> scale 0.6
                    |> move (-20, 40)
                    ,
                    text "Near the start of the proof, it may help to put everything in terms of sin and cos."
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 20)
                    ,
                    text "csc(x)tan(x) = 1/cos(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 10)
                    ,
                    text "(1/sin(x)) (sin(x)/cos(x) = 1/cos(x)     ***"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 5)
                    ,
                    text "sin(x)/(sin(x)cos(x) = 1/cos(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 0)
                    ,
                    text "1/cos(x) = 1/cos(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, -5)
                    ,
                    button MoveToLesson "Back" red
                    |> scale 0.2
                    |> move (-80, -50)
                    ]
                    
                Lesson3 ->
                    [
                    text "Lesson #3"
                    |> filled black
                    |> scale 0.6
                    |> move (-20, 40)
                    ,
                    text "When working with sin^2(x) and cos^2(x), look to use the Pythagorean identities. (sin^2(x) + cos^2(x) = 1)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 20)
                    ,
                    text "(-1)(sin(x) - 1)(sin(x) + 1) = cos^2(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 10)
                    ,
                    text "(-1)(sin^2(x) - 1) = cos^2(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 5)
                    ,
                    text "1 - sin^2(x) = cos^2(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 0)
                    ,
                    text "cos^2(x) = cos^2(x)     ***"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, -5)
                    ,
                    button MoveToLesson "Back" red
                    |> scale 0.2
                    |> move (-80, -50)
                    ]
                    
                Lesson4 ->
                    [
                    text "Lesson #4"
                    |> filled black
                    |> scale 0.6
                    |> move (-20, 40)
                    ,
                    text "When you have multiple terms in the numerator of a fraction, it may help to split them into separate fractions."
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 20)
                    ,
                    text "(csc(x) - sin(x))/csc(x) = cos^2(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 10)
                    ,
                    text "csc(x)/csc(x) - sin(x)/csc(x) = cos^2(x)     ***"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 5)
                    ,
                    text "1 - sin^2(x) = cos^2(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 0)
                    ,
                    text "cos^2(x) = cos^2(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, -5)
                    ,
                    button MoveToLesson "Back" red
                    |> scale 0.2
                    |> move (-80, -50)
                    ]
                    
                Lesson5 ->
                    [
                    text "Lesson #5"
                    |> filled black
                    |> scale 0.6
                    |> move (-20, 40)
                    ,
                    text "Look for when to apply the Double Angle Formulas. (cos(2x) = 2(cos^2(x)) - 1), (sin(2x) = 2sin(x)cos(x)), etc."
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 20)
                    ,
                    text "(2cos^2(x) - 1)/(2sin(x)cos(x)) = cot(2x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 10)
                    ,
                    text "cos(2x)/sin(2x) = cot(2x)     ***"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 5)
                    ,
                    text "cot(2x) = cot(2x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 0)
                    ,
                    button MoveToLesson "Back" red
                    |> scale 0.2
                    |> move (-80, -50)
                    ]
                    
                Lesson6 ->
                    [
                    text "Lesson #6"
                    |> filled black
                    |> scale 0.6
                    |> move (-20, 40)
                    ,
                    text "Look for when to apply the Addition/Subtraction Formulas. (Whenever you see sin or cos of 2 variables being added/subtracted)"
                    |> filled black
                    |> scale 0.25
                    |> move (-80, 20)
                    ,
                    text "sin(x+y) - sin(x-y) = 2cos(x)sin(y)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 10)
                    ,
                    text "sin(x)cos(y) + cos(x)sin(y) - (sin(x)cos(y) - cos(x)sin(y)) = 2cos(x)sin(y)    ***"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 5)
                    ,
                    text "sin(x)cos(y) + cos(x)sin(y) - sin(x)cos(y) + cos(x)sin(y)) = 2cos(x)sin(y)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, 0)
                    ,
                    text "2cos(x)sin(y) = 2cos(x)sin(y)"
                    |> filled black
                    |> scale 0.3
                    |> move (-80, -5)
                    ,
                    button MoveToLesson "Back" red
                    |> scale 0.2
                    |> move (-80, -50)
                    ]
          
          --Visuals for the Try for Yourself page
          Try -> 
                [rect 220 150
                |> filled (rgb 190 255 200)
                ,
                trianglepattern
                ] ++
                --This case expression accounts for each page in the Try for Youself section
                --TryHome includes numerous trig identities, with buttons leading to their solutions (EasySol1, EasySol2, etc.)
                --Interact includes a simple drag-and-drop identity activity
                case model.tryState of 
                TryHome ->
                    [
                    text "Try for Yourself"
                    |> filled black
                    |> scale 0.6
                    |> move (-20, 40)
                    ,
                    text "Prove the following identities"
                    |> filled black
                    |> scale 0.4
                    |> move (-25, 30)
                    ,
                    button MoveToMenu "Menu" red
                    |> scale 0.2
                    |> move (-80, -50)
                    ,
                    bigbutton MoveToInteract "Interactive Proof" lightGreen
                    |> scale 0.5
                    |> move (60, -50)
                    ,
                    
                       ----Easy Section----

                    rect 15 6
                    |> filled yellow
                    |> move (-64, 20)
                    ,
                    text "Easy"
                    |> filled black
                    |> scale 0.5
                    |> move (-70, 18)               
                    ,

                    -- Ex 1
                    text "tan(x) = sin(x)sec(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-90, 11)
                    ,
                    button DispEasySol1 "Solution" blue
                    |> scale 0.25
                    |> move (-70, 7)
                    ,

                    -- Ex 2
                    text "tan(x)sin(x) + cos(x) = sec(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-90, 0)
                    ,
                    button DispEasySol2 "Solution" blue
                    |> scale 0.25
                    |> move (-70, -4)
                    ,

                    -- Ex 3
                    text "1/tan(x) + tan(x) = 1/sin(x)cos(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-90, -11)
                    ,
                    button DispEasySol3 "Solution" blue
                    |> scale 0.25
                    |> move (-70, -15)
                    ,

                    -- Ex 4
                    text "sin(x) - sin(x)cos^2(x) = sin^3(x) "
                    |> filled black
                    |> scale 0.3
                    |> move (-90, -22)
                    ,
                    button DispEasySol4 "Solution" blue
                    |> scale 0.25
                    |> move (-70, -26)
                    ,

                    -- Ex 5
                    text "(sin(x) - cos(x))^2 + (sin(x) + cos(x))^2 = 2"
                    |> filled black
                    |> scale 0.3
                    |> move (-90, -33)
                    ,
                    button DispEasySol5 "Solution" blue
                    |> scale 0.25
                    |> move (-70, -37)
                    ,


                    ----Medium Section----


                    rect 22 6
                    |> filled orange
                    |> move (0, 20)
                    ,
                    text "Medium"
                    |> filled black
                    |> scale 0.5
                    |> move (-10, 18)
                    ,

                   -- Ex 1 
                    text "tan(x)sin(x) = sec(x) - cos(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-20, 11)
                    ,
                    button DispMedSol1 "Solution" blue
                    |> scale 0.25
                    |> move (-2, 7)
                    ,

                    -- Ex 2
                    text "tan^2(x) = csc^2(x)tan^2(x) - 1"
                    |> filled black
                    |> scale 0.3
                    |> move (-20, 0)
                    ,
                    button DispMedSol2 "Solution" blue
                    |> scale 0.25
                    |> move (-2, -4)
                    ,

                    -- Ex 3
                    text "(sin^4(x) - cos^4(x))/(sin^2(x) - cos^2(x)) = 1"
                    |> filled black
                    |> scale 0.25
                    |> move (-20, -11)
                    ,
                    button DispMedSol3 "Solution" blue
                    |> scale 0.25
                    |> move (-2, -15)
                    ,

                    -- Ex 4
                    text "sin^4(x) - cos^4(x) = 1 - 2cos^2(x)"
                    |> filled black
                    |> scale 0.3
                    |> move (-20, -22)
                    ,
                    button DispMedSol4 "Solution" blue
                    |> scale 0.25
                    |> move (-2, -26)
                    ,

                    -- Ex 5
                    text "(sin^2(x) + 4sin(x) + 3) / cos^2(x) = (3 + sin(x))/(1 - sin(x))"
                    |> filled black
                    |> scale 0.25
                    |> move (-20, -33)
                    ,
                    button DispMedSol5 "Solution" blue
                    |> scale 0.25
                    |> move (-2, -37)
                    ,


                    ----Hard Section----


                    rect 15 6
                    |> filled red
                    |> move (64, 20)
                    ,
                    text "Hard"
                    |> filled white
                    |> scale 0.5
                    |> move (58, 18)
                    ,

                    -- Ex 1 
                    text "1 - 2cos^2(x) = (tan^2(x) - 1)/(tan^2(x) + 1)"               
                    |> filled black
                    |> scale 0.3
                    |> move (32, 11)
                    ,
                    button DispHardSol1 "Solution" blue
                    |> scale 0.25
                    |> move (60, 7)      
                    ,

                    -- Ex 2
                    text "cos(x)/(1 - sin(x)) - tan(x) = sec(x)"               
                    |> filled black
                    |> scale 0.3
                    |> move (32, 0)
                    ,
                    button DispHardSol2 "Solution" blue
                    |> scale 0.25
                    |> move (60, -4) 
                    ,

                    -- Ex 3
                    text "csc(x)/sin(x) - cot(x)/tan(x) = 1"               
                    |> filled black
                    |> scale 0.3
                    |> move (40, -11)
                    ,
                    button DispHardSol3 "Solution" blue
                    |> scale 0.25
                    |> move (60, -15)    
                    ,

                    -- Ex 4
                    text "tan^2(x) + 1 + tan(x)sec(x) = (1 + sin(x))/cos^2(x)"               
                    |> filled black
                    |> scale 0.25
                    |> move (35, -22)
                    ,
                    button DispHardSol4 "Solution" blue
                    |> scale 0.25
                    |> move (60, -26)                                  
                    ]


                -- Solution for the first easy identity       
                EasySol1 -> [
                    rect 220 150
                    |> filled (rgb 190 255 200)
                    ,
                    text "tan(x) = sin(x)sec(x)" 
                    |> filled blue
                    |> scale 0.6
                    |> move (-80, 50)
                    ,
                    text "We can rewrite it in terms of just sine and cosine..."
                    |> filled black
                    |> scale 0.6
                    |> move (-80, 30)
                    ,
                    text "sin(x)/cos(x) = sin(x)(1/cos(x))"
                    |> filled blue
                    |> scale 0.6
                    |> move (-80, 10)
                    ,
                    text "If we simplify this we will see that both sides are equal"
                    |> filled black
                    |> scale 0.6
                    |> move (-80, -10)
                    ,
                    text "sin(x)/cos(x) = sin(x)/cos(x)"
                    |> filled blue
                    |> scale 0.6
                    |> move (-80, -30)
                    ,
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)                       
                    ]

                -- Solution for the second easy identity             
                EasySol2 -> [
                    rect 220 150
                    |> filled (rgb 190 255 200)
                    ,
                    text "tan(x)sin(x) + cos(x) = sec(x)" 
                    |> filled blue
                    |> scale 0.5
                    |> move (-80, 50)
                    ,
                    text "Manipulate LHS. tan(x) = sin(x)/cos(x) so"
                    |> filled black
                    |> scale 0.5
                    |> move (-80, 35)
                    ,
                    text "tan(x)sin(x) + cos(x) = (sin(x) / cos(x)) * sin(x) + cos(x) = "
                    |> filled blue
                    |> scale 0.5
                    |> move (-80, 20)
                    ,
                    text "sin^2(x)/cos(x) + cos(x) = sin^2(x)/cos(x) + cos^2(x)/cos(x) = "
                    |> filled blue
                    |> scale 0.5
                    |> move (-80, 10)
                    ,
                    text "Use the fact that sin^2(x) + cos^2(x) = 1"
                    |> filled black
                    |> scale 0.5
                    |> move (-80, -5)
                    ,
                    text "(sin^2(x) + cos^2(x))/cos(x) = 1/cos(x) = sec(x) = RHS "
                    |> filled blue
                    |> scale 0.5
                    |> move (-80, -20)
                    ,
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)                       
                    ]    


                -- Solution for the 3rd easy identity             
                EasySol3 -> [
                    text "1/tan(x) + tan(x) = 1/sin(x)cos(x)" 
                    |> filled blue
                    |> scale 0.5
                    |> move (-80, 50)
                    ,
                    text "Manipulate LHS. tan(x) = sin(x)/cos(x) so 1/tan(x) = cos(x)/sin(x)"
                    |> filled black
                    |> scale 0.5
                    |> move (-80, 35)
                    ,
                    text "1/tan(x) + tan(x) = cos(x)/sin(x) + sin(x)/cos(x) = "
                    |> filled blue
                    |> scale 0.5
                    |> move (-80, 20)
                    ,
                    text "( sin^2(x) + cos^2(x) )/cos(x)sin(x) = "
                    |> filled blue
                    |> scale 0.5
                    |> move (-80, 10)
                    ,                 
                    text "Use the fact that sin^2(x) + cos^2(x) = 1"
                    |> filled black
                    |> scale 0.5
                    |> move (-80, -5)
                    ,
                    text "1/sin(x)cos(x) = RHS"
                    |> filled blue
                    |> scale 0.5
                    |> move (-80, -20)
                    ,
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)                       
                    ]

                -- Solution for the 4th easy identity             
                EasySol4 -> [
                    text "sin(x) - sin(x)cos^2(x) = sin^3(x)" 
                    |> filled blue
                    |> scale 0.5
                    |> move (-80, 50)
                    ,
                    text "Manipulate LHS."
                    |> filled black
                    |> scale 0.5
                    |> move (-80, 35)
                    ,
                    text "sin(x) - sin(x)cos^2(x) = sin(x) (1 - cos^2(x)) ="
                    |> filled blue
                    |> scale 0.5
                    |> move (-80, 20)
                    ,
                    text "If sin^2(x) + cos^2(x) = 1, then sin^2(x) = 1 - cos^2(x) "
                    |> filled black
                    |> scale 0.5
                    |> move (-80, 5)
                    ,                 
                    text "sin(x)sin^2(x) = sin^3(x) = RHS"
                    |> filled blue
                    |> scale 0.5
                    |> move (-80, -10)
                    ,                      
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)                       
                    ]

                -- Solution for the 5th easy identity
                EasySol5 -> [
                    text "(sin(x) - cos(x))^2 + (sin(x) + cos(x))^2 = 2" 
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 50)
                    ,
                    text "Manipulate LHS. Expand."
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 35)
                    ,
                    text "(sin^2(x) + cos^2(x) - 2sin(x)cos(x)) + (sin^2(x) + cos^2(x) + 2sin(x)cos(x)) ="
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 20)
                    ,                                      
                    text "2sin^2(x) + 2cos^2(x) = 2(sin^2(x) + cos^2(x)) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 10)
                    ,         
                    text "Use the fact that sin^2(x) + cos^2(x) = 1"
                    |> filled black
                    |> scale 0.4
                    |> move (-80, -5)
                    ,
                    text "2(1) = 2 = RHS"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, -20)
                    ,
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)                       
                    ]     

                -- Solution for the 1st medium identity            
                MedSol1 ->  [
                    text "tan(x)sin(x) = sec(x) - cos(x)" 
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 50)
                    ,
                    text "Manipulate RHS."
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 35)
                    ,
                    text "sec(x) - cos(x) = 1/cos(x) - cos^2(x)/cos(x) = (1 - cos^2(x))/cos(x) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 20)
                    ,                                      
                    text "If sin^2(x) + cos^2(x) = 1, then sin^2(x) = 1 - cos^2(x) "
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 5)
                    ,         
                    text "sin^2(x)/cos(x) = sin(x) * sin(x)/cos(x) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, -10)
                    ,
                    text "sin(x)tan(x) = LHS"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, -20)
                    ,
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)]

                -- Solution for the 2nd medium identity 
                MedSol2 -> [
                    text "tan^2(x) = csc^2(x)tan^2(x) - 1" 
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 50)
                    ,
                    text "Manipulate RHS."
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 35)
                    ,
                    text "csc^2(x)tan^2(x) - 1 = 1/sin^2(x) * sin^2(x)/cos^2(x)^2 - 1 ="
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 20)
                    ,                                      
                    text "1/cos^2(x) - 1 = 1/cos^2(x) - cos^2(x)/cos^2(x) = (1 - cos^2(x))/cos^2(x)"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 10)
                    ,         
                    text "If sin^2(x) + cos^2(x) = 1, then sin^2(x) = 1 - cos^2(x) "
                    |> filled black
                    |> scale 0.4
                    |> move (-80, -5)
                    ,
                    text "sin^2(x)/cos^2(x) = tan^2(x) = LHS"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, -20)
                    ,
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)]

                -- Solution for 3rd medium identity
                MedSol3 -> [
                    text "(sin^4(x) - cos^4(x))/(sin^2(x) - cos^2(x)) = 1" 
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 50)
                    ,
                    text "Manipulate LHS. Use differences of squares."
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 35)
                    ,
                    text "(sin^4(x) - cos^4(x))/(sin^2(x) - cos^2(x)) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 20)
                    ,                                      
                    text "( ( sin^2(x) )^2 - ( cos^2(x) )^2 )/(sin^2(x) - cos^2(x)) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 10)
                    ,         
                    text "( ( sin^2(x) - cos^2(x) ) ( sin^2(x) + cos^2(x) ) ) / (sin^2(x) - cos^2(x))"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 0)
                    ,
                    text "(sin^2(x) - cos^2(x)) = 1 = RHS"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, -10)
                    ,
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)]

                -- Solution for 4th medium identity             
                MedSol4 -> [
                    text "sin^4(x) - cos^4(x) = 1 - 2cos^2(x)" 
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 50)
                    ,
                    text "Manipulate LHS."
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 35)
                    ,
                    text "sin^4(x) - cos^4(x) = ( ( sin^2(x) )^2 - ( cos^2(x) )^2 ) ="
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 20)
                    ,                                      
                    text "( sin^2(x) - cos^2(x) ) ( sin^2(x) + cos^2(x) ) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 10)
                    ,         
                    text "( sin^2(x) - cos^2(x) ) = (1 - cos^2(x)) - cos^2(x) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 0)
                    ,
                    text "1 - 2cos^2(x) = RHS"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, -10)
                    ,
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)]

                -- Solution for 5th medium identity
                MedSol5 -> [
                    text "(sin^2(x) + 4sin(x) + 3) / cos^2(x) = (3 + sin(x))/(1 - sin(x))" 
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 50)
                    ,
                    text "Manipulate LHS. Factor."
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 35)
                    ,
                    text "(sin^2(x) + 4sin(x) + 3) / cos^2(x) = (sin(x) + 1)(sin(x) + 3)/(1 - sin^2(x)) ="
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 20)
                    ,                                      
                    text "(sin(x) + 1)(sin(x) + 3)/(1 + sin(x))(1 - sin(x)) ="
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 10)
                    ,         
                    text "(3 + sin(x))/(1 - sin(x)) = RHS"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 0)
                    ,
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)]

                -- Solution for the 1st hard identity
                HardSol1 -> [
                    text "1 - 2cos^2(x) = (tan^2(x) - 1)/(tan^2(x) + 1)" 
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 50)
                    ,
                    text "Manipulate RHS."
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 35)
                    ,
                    text "(tan^2(x) - 1)/(tan^2(x) + 1) = (sin^2(x)/cos^2(x) - 1) / (sin^2(x)/cos^2(x) + 1) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 20)
                    ,                                      
                    text "(sin^2(x)/cos^2(x) - cos^2(x)/cos^2(x)) / (sin^2(x)/cos^2(x) + cos^2(x)/cos^2(x)) ="
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 10)
                    ,         
                    text "((sin^2(x) - cos^2(x)) / cos^2(x)) / ((sin^2(x) + cos^2(x)) / cos^2(x)) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 0)
                    ,         
                    text "((sin^2(x) - cos^2(x)) / cos^2(x)) / (1 / cos^2(x)) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, -10)
                    ,         
                    text "((sin^2(x) - cos^2(x)) / cos^2(x)) * cos^2(x) = sin^2(x) - cos^2(x)"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, -20)
                    ,
                    text "(sin^2(x) - cos^2(x) = (1 - cos^2(x)) - cos^2(x) = 1 - 2cos^2(x) = LHS"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, -30)
                    ,
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)]

                -- Solution for the 2nd hard identity 
                HardSol2 -> [
                    text "cos(x)/(1 - sin(x)) - tan(x) = sec(x)" 
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 50)
                    ,
                    text "Manipulate LHS."
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 35)
                    ,
                    text "cos(x)/(1 - sin(x)) - tan(x) = cos(x)/(1 - sin(x)) - sin(x)/cos(x) ="
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 20)
                    ,                                      
                    text "(cos^2(x) - sin(x)(1 - sin(x)))/cos(x)(1 - sin(x)) ="
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 10)
                    ,         
                    text "(cos^2(x) - sin(x) + sin^2(x))/cos(x)(1 - sin(x)) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 0)
                    ,         
                    text "(1 - sin(x))/cos(x)(1 - sin(x)) = 1/cos(x) = RHS"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, -10)
                    ,
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)]

                -- Solution for the 3rd hard identity             
                HardSol3 -> [
                    text "csc(x)/sin(x) - cot(x)/tan(x) = 1" 
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 50)
                    ,
                    text "Manipulate LHS."
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 35)
                    ,
                    text "csc(x)/sin(x) - cot(x)/tan(x) = (1/sin(x))/(sin(x)/1) - (cos(x)/sin(x))/(sin(x)/cos(x)) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 20)
                    ,                                      
                    text "1/sin(x) * 1/sin(x) - (cos(x)/sin(x))*(cos(x)/sin(x)) = 1/sin^2(x) - cos^2(x)/sin^2(x) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 10)
                    ,         
                    text "(1 - cos^2(x))/sin^2(x) = ((sin^2(x) + cos^2(x)) - cos^2(x))/sin^2(x) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 0)
                    ,         
                    text "sin^2(x)/sin^2(x) = 1 = RHS"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, -10)
                    ,
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)]       

                -- Solution for the 4th hard identity             
                HardSol4 -> [
                    text "tan^2(x) + 1 + tan(x)sec(x) = (1 + sin(x))/cos^2(x)" 
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 50)
                    ,
                    text "Manipulate LHS."
                    |> filled black
                    |> scale 0.4
                    |> move (-80, 35)
                    ,
                    text "tan^2(x) + 1 + tan(x)sec(x) = sin^2(x)/cos^2(x) + 1 + sin(x)/cos(x) * 1/cos(x) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 20)
                    ,                                      
                    text "sin^2(x)/cos^2(x) + cos^2(x)/cos^2(x) + sin(x)/cos^2(x) = "
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 10)
                    ,         
                    text "(sin^2(x) + cos^2(x) + sin(x))cos^2(x) = (1 + sin(x))/cos^2(x) = RHS"
                    |> filled blue
                    |> scale 0.4
                    |> move (-80, 0)
                    ,                               
                    bigbutton MoveToTry "Back to questions" green
                    |> scale 0.5
                    |> move (0, -50)]
                
                Interact -> [
                    text "_____"
                    |> filled lightBlue
                    |> move (5,55)
                    ,
                    text "csc(x) + cot(x)"
                    |> filled lightBlue
                    |> scale 0.4
                    |> move (5,55)
                    ,
                    text "tan(x) + sin(x)"
                    |> filled lightBlue
                    |> scale 0.4
                    |> move (5,48)
                    ,
                    text "cot(x)csc(x)"
                    |> filled lightBlue
                    |> scale 0.4
                    |> move (58,52)
                    ,
                    text "___"
                    |> filled lightBlue
                    |> move (12,-50)
                    ,
                    text "cos(x)"
                    |> filled lightBlue
                    |> scale 0.4
                    |> move (15,-51)
                    ,
                    text "sin^2(x)"
                    |> filled lightBlue
                    |> scale 0.4
                    |> move (13,-57)
                    ,
                    text "___"
                    |> filled lightBlue
                    |> move (60,4)
                    ,
                    text "cos(x)"
                    |> filled lightBlue
                    |> scale 0.4
                    |> move (64,3)
                    ,
                    text "sin^2(x)"
                    |> filled lightBlue
                    |> scale 0.4
                    |> move (61,-3)
                    ,
                    if model.firstPiece == Locked && model.secondPiece == Locked && model.thirdPiece == Locked && model.fourthPiece == Locked then text "Great Job!"
                    |> filled black
                    |> move (-80, 0)
                    else group []
                    ,
                    outlines
                    ,
                    piece1
                    |> move model.pos1
                    |> if model.firstPiece == Free then notifyMouseDown ChangeToDragging1 else move (0,0)
                    ,
                    piece2
                    |> move model.pos2
                    |> if model.secondPiece == Free then notifyMouseDown ChangeToDragging2 else move (0,0)
                    ,
                    piece3
                    |> move model.pos3
                    |> if model.thirdPiece == Free then notifyMouseDown ChangeToDragging3 else move (0,0)
                    ,
                    piece4
                    |> move model.pos4
                    |> if model.fourthPiece == Free then notifyMouseDown ChangeToDragging4 else move (0,0)
                    ,
                    case model.dragState of 
                    Released -> group []
                    Dragging1 -> rect 185 125 
                      |> ghost 
                      |> notifyMouseMoveAt Drag1 
                      |> notifyLeave ChangeToRelease
                      |> notifyMouseUp ChangeToRelease
                    Dragging2 -> rect 185 125 
                      |> ghost 
                      |> notifyMouseMoveAt Drag2 
                      |> notifyLeave ChangeToRelease
                      |> notifyMouseUp ChangeToRelease
                    Dragging3 -> rect 185 125 
                      |> ghost 
                      |> notifyMouseMoveAt Drag3
                      |> notifyLeave ChangeToRelease
                      |> notifyMouseUp ChangeToRelease
                    Dragging4 -> rect 185 125 
                      |> ghost 
                      |> notifyMouseMoveAt Drag4 
                      |> notifyLeave ChangeToRelease
                      |> notifyMouseUp ChangeToRelease
                    ,
                    button MoveToTry "Back" red
                    |> scale 0.2
                    |> move (-80, -50)
                    ]
          
          --Visuals for the Walkthrough section
          Walkthrough -> 
                [rect 220 150
                |> filled (rgb 255 200 200)
                ,
                trianglepattern
                ] ++ 
                --This case expression accounts for the different pages within the Walkthrough section
                --WalkthroughHome contains buttons linking to the three walkthroughs, which present examples of trig identities in steps similar to a slideshow
                case model.walkthroughState of
                WalkthroughHome ->
                    [
                    text "Walkthrough"
                    |> filled black
                    |> scale 0.6
                    |> move (-20, 40)
                    ,
                    button MoveToMenu "Menu" red
                    |> scale 0.2
                    |> move (-80, -50)
                    
                    ,button MoveToWalkthrough1 "           1" (rgb 255 160 60)
                    |> move (-80, 0)
                    |> scale 0.6
                    ,button MoveToWalkthrough2 "           2" (rgb 255 160 60)
                    |> move (0, 0)
                    |> scale 0.6
                    ,button MoveToWalkthrough3 "           3" (rgb 255 160 60)
                    |> move (80, 0)
                    |> scale 0.6
                    ]
                
                --Walkthrough1's case requires a case expression to account for the different slides it contains
                Walkthrough1 -> case model.walkthroughSlideState of
                    Slide1 ->
                        [
                        text "Walkthrough #1"
                        |> filled black
                        |> scale 0.6
                        |> move (-20, 40)
                        ,
                        text "We are given the following identity..."
                        |> filled black
                        |> scale 0.4
                        |> move (-35, 30)
                        ,
                        text "tan(x) = sin(x)sec(x)"
                        |> filled black
                        |> scale 0.4
                        |> move (-20, 20)
                        ,
                        button MoveToWalkthroughSlide2 "Next" (rgb 255 160 60)
                        |> scale 0.2
                        |> move (60, -50)
                        ,
                        button MoveToWalkthrough "Back" red
                        |> scale 0.2
                        |> move (-80, -50)
                        ]
                        
                    Slide2 ->
                        [
                        text "Walkthrough #1"
                        |> filled black
                        |> scale 0.6
                        |> move (-20, 40)
                        ,
                        text "We are given the following identity..."
                        |> filled black
                        |> scale 0.4
                        |> move (-35, 30)
                        ,
                        text "tan(x) = sin(x)sec(x)"
                        |> filled black
                        |> scale 0.4
                        |> move (-20, 20)
                        ,
                        text "We can rewrite it in terms of just sine and cosine..."
                        |> filled black
                        |> scale 0.4
                        |> move (-45, 5)
                        ,
                        text "sin(x)/cos(x) = sin(x)(1/cos(x))"
                        |> filled black
                        |> scale 0.4
                        |> move (-30, -5)
                        ,
                        button MoveToWalkthroughSlide3 "Next" (rgb 255 160 60)
                        |> scale 0.2
                        |> move (60, -50)
                        ,
                        button MoveToWalkthroughSlide1 "Prev" (rgb 255 160 60)
                        |> scale 0.2
                        |> move (40, -50)
                        ,
                        button MoveToWalkthrough "Back" red
                        |> scale 0.2
                        |> move (-80, -50)
                        ]
                        
                    Slide3 ->
                        [
                        text "Walkthrough #1"
                        |> filled black
                        |> scale 0.6
                        |> move (-20, 40)
                        ,
                        text "We are given the following identity..."
                        |> filled black
                        |> scale 0.4
                        |> move (-35, 30)
                        ,
                        text "tan(x) = sin(x)sec(x)"
                        |> filled black
                        |> scale 0.4
                        |> move (-20, 20)
                        ,
                        text "We can rewrite it in terms of just sine and cosine..."
                        |> filled black
                        |> scale 0.4
                        |> move (-45, 5)
                        ,
                        text "sin(x)/cos(x) = sin(x)(1/cos(x))"
                        |> filled black
                        |> scale 0.4
                        |> move (-30, -5)
                        ,
                        text "If we simplify this we will see that both sides are equal"
                        |> filled black
                        |> scale 0.4
                        |> move (-50, -20)
                        ,
                        text "sin(x)/cos(x) = sin(x)/cos(x)"
                        |> filled black
                        |> scale 0.4
                        |> move (-25, -30)
                        ,
                        button MoveToWalkthroughSlide2 "Prev" (rgb 255 160 60)
                        |> scale 0.2
                        |> move (40, -50)
                        ,
                        button MoveToWalkthrough "Back" red
                        |> scale 0.2
                        |> move (-80, -50)
                        ]
                    
                --Walkthrough2's case requires a case expression to account for the different slides it contains    
                Walkthrough2 -> case model.walkthroughSlideState of
                    Slide1 ->
                        [
                        text "Walkthrough #2"
                        |> filled black
                        |> scale 0.6
                        |> move (-20, 40)
                        ,
                        text "We are given the following identity..."
                        |> filled black
                        |> scale 0.4
                        |> move (-35, 30)
                        ,
                        text "(sin(x) - sin(x)cos^2(x))/sin(x) = sin^2(x)"
                        |> filled black
                        |> scale 0.4
                        |> move (-40, 20)
                        ,
                        button MoveToWalkthroughSlide2 "Next" (rgb 255 160 60)
                        |> scale 0.2
                        |> move (60, -50)
                        ,
                        button MoveToWalkthrough "Back" red
                        |> scale 0.2
                        |> move (-80, -50)
                        ]
                        
                    Slide2 ->
                        [
                        text "Walkthrough #2"
                        |> filled black
                        |> scale 0.6
                        |> move (-20, 40)
                        ,
                        text "We are given the following identity..."
                        |> filled black
                        |> scale 0.4
                        |> move (-35, 30)
                        ,
                        text "(sin(x) - sin(x)cos^2(x))/sin(x) = sin^2(x)"
                        |> filled black
                        |> scale 0.4
                        |> move (-40, 20)
                        ,
                        text "We notice that the left side can be separated into 2 fractions..."
                        |> filled black
                        |> scale 0.4
                        |> move (-55, 5)
                        ,
                        text "sin(x)/sin(x) - sin(x)cos^2(x)/sin(x) = sin^2(x)"
                        |> filled black
                        |> scale 0.4
                        |> move (-40, -5)
                        ,
                        button MoveToWalkthroughSlide3 "Next" (rgb 255 160 60)
                        |> scale 0.2
                        |> move (60, -50)
                        ,
                        button MoveToWalkthroughSlide1 "Prev" (rgb 255 160 60)
                        |> scale 0.2
                        |> move (40, -50)
                        ,
                        button MoveToWalkthrough "Back" red
                        |> scale 0.2
                        |> move (-80, -50)
                        ]
                        
                    Slide3 ->
                        [
                        text "Walkthrough #2"
                        |> filled black
                        |> scale 0.6
                        |> move (-20, 40)
                        ,
                        text "We are given the following identity..."
                        |> filled black
                        |> scale 0.4
                        |> move (-35, 30)
                        ,
                        text "(sin(x) - sin(x)cos^2(x))/sin(x) = sin^2(x)"
                        |> filled black
                        |> scale 0.4
                        |> move (-40, 20)
                        ,
                        text "We notice that the left side can be separated into 2 fractions..."
                        |> filled black
                        |> scale 0.4
                        |> move (-55, 5)
                        ,
                        text "sin(x)/sin(x) - sin(x)cos^2(x)/sin(x) = sin^2(x)"
                        |> filled black
                        |> scale 0.4
                        |> move (-40, -5)
                        ,
                        text "We can then simplify and apply a Pythagorian identity (since sin^2(x) + cos^2(x) = 1)"
                        |> filled black
                        |> scale 0.4
                        |> move (-80, -20)
                        ,
                        text "1 - cos^2(x) = sin^2(x)"
                        |> filled black
                        |> scale 0.4
                        |> move (-25, -30)
                        ,
                        text "sin^2(x) = sin^2(x)"
                        |> filled black
                        |> scale 0.4
                        |> move (-21, -37)
                        ,
                        button MoveToWalkthroughSlide2 "Prev" (rgb 255 160 60)
                        |> scale 0.2
                        |> move (40, -50)
                        ,
                        button MoveToWalkthrough "Back" red
                        |> scale 0.2
                        |> move (-80, -50)
                        ]
                        
                --Walkthrough3's case requires a case expression to account for the different slides it contains        
                Walkthrough3 -> case model.walkthroughSlideState of
                    Slide1 ->
                        [
                        text "Walkthrough #3"
                        |> filled black
                        |> scale 0.6
                        |> move (-20, 40)
                        ,
                        text "We are given the following identity..."
                        |> filled black
                        |> scale 0.4
                        |> move (-35, 30)
                        ,
                        text "tan(x)sin(x) = sec(x) - cos(x)"
                        |> filled black
                        |> scale 0.3
                        |> move (-20, 22)
                        ,
                        text "RHS = 1/cos(x) - cos(x) (if we rewrite it)"
                        |> filled black
                        |> scale 0.3
                        |> move (-25, 18)
                        ,
                        button MoveToWalkthroughSlide2 "Next" (rgb 255 160 60)
                        |> scale 0.2
                        |> move (60, -50)
                        ,
                        button MoveToWalkthrough "Back" red
                        |> scale 0.2
                        |> move (-80, -50)
                        ]
                        
                    Slide2 ->
                        [
                        text "Walkthrough #3"
                        |> filled black
                        |> scale 0.6
                        |> move (-20, 40)
                        ,
                        text "We are given the following identity..."
                        |> filled black
                        |> scale 0.4
                        |> move (-35, 30)
                        ,
                        text "tan(x)sin(x) = sec(x) - cos(x)"
                        |> filled black
                        |> scale 0.3
                        |> move (-20, 22)
                        ,
                        text "RHS = 1/cos(x) - cos(x) (if we rewrite it)"
                        |> filled black
                        |> scale 0.3
                        |> move (-25, 18)
                        ,
                        text "Then, we can write cos(x) so the terms have a common denominator..."
                        |> filled black
                        |> scale 0.4
                        |> move (-60, 5)
                        ,
                        text "RHS = 1/cos(x) - cos^2(x)/cos(x)"
                        |> filled black
                        |> scale 0.3
                        |> move (-20, -3)
                        ,
                        text "= (1 - cos^2(x))/cos(x)"
                        |> filled black
                        |> scale 0.3
                        |> move (-15, -7)
                        ,
                        button MoveToWalkthroughSlide3 "Next" (rgb 255 160 60)
                        |> scale 0.2
                        |> move (60, -50)
                        ,
                        button MoveToWalkthroughSlide1 "Prev" (rgb 255 160 60)
                        |> scale 0.2
                        |> move (40, -50)
                        ,
                        button MoveToWalkthrough "Back" red
                        |> scale 0.2
                        |> move (-80, -50)
                        ]
                        
                    Slide3 ->
                        [
                        text "Walkthrough #3"
                        |> filled black
                        |> scale 0.6
                        |> move (-20, 40)
                        ,
                        text "We are given the following identity..."
                        |> filled black
                        |> scale 0.4
                        |> move (-35, 30)
                        ,
                        text "tan(x)sin(x) = sec(x) - cos(x)"
                        |> filled black
                        |> scale 0.3
                        |> move (-20, 22)
                        ,
                        text "RHS = 1/cos(x) - cos(x) (if we rewrite it)"
                        |> filled black
                        |> scale 0.3
                        |> move (-25, 18)
                        ,
                        text "Then, we can write cos(x) so the terms have a common denominator..."
                        |> filled black
                        |> scale 0.4
                        |> move (-60, 5)
                        ,
                        text "RHS = 1/cos(x) - cos^2(x)/cos(x)"
                        |> filled black
                        |> scale 0.3
                        |> move (-20, -3)
                        ,
                        text "= (1 - cos^2(x))/cos(x)"
                        |> filled black
                        |> scale 0.3
                        |> move (-15, -7)
                        ,
                        text "If we use the Pythagorian Identity and simplify this we will see that both sides are equal"
                        |> filled black
                        |> scale 0.4
                        |> move (-85, -20)
                        ,
                        text "sin^2(x)/cos(x)"
                        |> filled black
                        |> scale 0.3
                        |> move (-10, -28)
                        ,
                        text "sin(x)(sin(x)/cos(x))"
                        |> filled black
                        |> scale 0.3
                        |> move (-15, -32)
                        ,
                        text "tan(x)sin(x)"
                        |> filled black
                        |> scale 0.3
                        |> move (-8, -36)
                        ,
                        button MoveToWalkthroughSlide2 "Prev" (rgb 255 160 60)
                        |> scale 0.2
                        |> move (40, -50)
                        ,
                        button MoveToWalkthrough "Back" red
                        |> scale 0.2
                        |> move (-80, -50)
                        ]
          --The main menu also includes this extra resources page that can be navigated to
          --It describes external internet sources for sdditional help on the subject of trigonometric identities
          Resources -> 
                [
                rect 220 150
                |> filled lightGrey
                ,text "If you're still having trouble, try these external resources!"
                |> filled black
                |> scale 0.6
                |> move (-80, 40)
                ,button MoveToMenu "Menu" red
                |> scale 0.2
                |> move (-80, -50)
                ,youtube
                |> move (-80,20)
                ,text "Check out Eddie Woo on YouTube for video lessons on trig identities and other math concepts"
                |> filled black
                |> scale 0.3
                |> move (-70,20)
                ,text "(https://www.youtube.com/user/misterwootube)"
                |> filled black
                |> scale 0.3
                |> move (-45,15)
                ,youtube
                |> move (-80,0)
                ,text "Check out Maths Explained on YouTube for video lessons on trig identities and other math concepts"
                |> filled black
                |> scale 0.3
                |> move (-70,0)
                ,text "(https://www.youtube.com/channel/UCf89Gd0FuNUdWv8FlSS7lqQ)"
                |> filled black
                |> scale 0.3
                |> move (-60,-5)
                ,khan
                |> move (-80,-20)
                ,text "Khan Academy also has a unit that goes over trig equations and identities"
                |> filled black
                |> scale 0.3
                |> move (-70,-20)
                ,text "(https://www.khanacademy.org/math/trigonometry#trig-equations-and-identities)"
                |> filled black
                |> scale 0.3
                |> move (-60,-25)
                ]

--Messages 2-6 include those used to move between pages such as Lesson, Walkthrough, etc.
--7-12 are used to navigate between lessons
--13-18 are messages used to navigate the walkthroughs and their slides
--19-32 are messages to show the solutions in the Try for Yourself section
--33 is used to access the interactive drag-and-drop part of the Try for Yourself section
--34-42 are used for dragging and dropping the answers in the interactive section
type Msg = Tick Float GetKeyState --1
          | MoveToLesson
          | MoveToTry
          | MoveToWalkthrough
          | MoveToResources --5
          | MoveToMenu
          | MoveToLesson1
          | MoveToLesson2
          | MoveToLesson3
          | MoveToLesson4 --10
          | MoveToLesson5
          | MoveToLesson6
          | MoveToWalkthrough1
          | MoveToWalkthrough2
          | MoveToWalkthrough3 --15
          | MoveToWalkthroughSlide1
          | MoveToWalkthroughSlide2
          | MoveToWalkthroughSlide3
          | DispEasySol1
          | DispEasySol2 --20
          | DispEasySol3
          | DispEasySol4
          | DispEasySol5
          | DispMedSol1
          | DispMedSol2 --25
          | DispMedSol3
          | DispMedSol4
          | DispMedSol5
          | DispHardSol1
          | DispHardSol2 --30
          | DispHardSol3
          | DispHardSol4
          | MoveToInteract
          | Drag1 (Float, Float) 
          | Drag2 (Float, Float) --35
          | Drag3 (Float, Float) 
          | Drag4 (Float, Float) 
          | ChangeToDragging1 
          | ChangeToDragging2 
          | ChangeToDragging3 --40
          | ChangeToDragging4 
          | ChangeToRelease

--This type is used in the model to distinguish wihch section the user is accessing
type Screen = Menu | Lesson | Try | Walkthrough | Resources
--This type is used in the model to distinguish wihch Lesson the user is accessing
type LessonState = LessonHome | Lesson1 | Lesson2 | Lesson3 | Lesson4 | Lesson5 | Lesson6
--This type is used in the model to distinguish wihch Walkthrough the user is accessing
type WalkthroughState = WalkthroughHome | Walkthrough1 | Walkthrough2 | Walkthrough3
--This type is used in the model to distinguish wihch slide in the Walkthrough the user is accessing
type WalkthroughSlide = Slide1 | Slide2 | Slide3
--This type is used in the model to distinguish wihch solution/page in Try for Yourself the user is accessing
type TryState = TryHome | Interact | EasySol1 | EasySol2 | EasySol3 | EasySol4 | EasySol5 | MedSol1 | MedSol2 | MedSol3 | MedSol4 | MedSol5 | HardSol1 | HardSol2 | HardSol3 | HardSol4
--This type is used in the model to track when the objects in the drag-and-drop are being moved
type DragState = Released | Dragging1 | Dragging2 | Dragging3 | Dragging4 
----This type is used in the model to track if a drag-and-drop object is in its proper place
type PieceState = Locked | Free

--Initially, all pages are set to their default, and the drag-and-drop has the objects in their starting positions (pos1, pos2, etc.)
init = { time = 0, state = Menu, lessonState = LessonHome, walkthroughState = WalkthroughHome, walkthroughSlideState = Slide1, tryState = TryHome, dragState = Released, 
         pos1 = (-60,20) , pos2 = (-60,50) , pos3 = (-60,-40) , pos4 = (-60,-10) , firstPiece = Free , secondPiece = Free , thirdPiece = Free , fourthPiece = Free}

update msg model = case msg of
                     --Here, the objects from the drag-and-drop are kept in place if they've been put in their correct spots
                     Tick t _ -> { model | time = t, pos1 = if model.firstPiece == Locked then (20,30) else model.pos1, 
                                                     pos2 = if model.secondPiece == Locked then (70,30) else model.pos2,
                                                     pos3 = if model.thirdPiece == Locked then (20,0) else model.pos3,
                                                     pos4 = if model.fourthPiece == Locked then (20,-30) else model.pos4 }
                     
                     
                     MoveToLesson -> 
                           {model | state = Lesson, lessonState = LessonHome}
                     
                     MoveToTry -> 
                           {model | state = Try, tryState = TryHome}
                     
                     MoveToWalkthrough -> 
                           {model | state = Walkthrough, walkthroughState = WalkthroughHome, walkthroughSlideState = Slide1}
                     
                     MoveToMenu -> case model.state of
                         Menu ->
                           model
                         otherwise ->
                           {model | state = Menu}
                           
                     MoveToLesson1 -> case model.state of
                         Lesson ->
                             {model | lessonState = Lesson1}
                         otherwise ->
                           model
                     
                     MoveToLesson2 -> case model.state of
                         Lesson ->
                             {model | lessonState = Lesson2}
                         otherwise ->
                           model
                     
                     MoveToLesson3 -> case model.state of
                         Lesson ->
                             {model | lessonState = Lesson3}
                         otherwise ->
                           model
                           
                     MoveToLesson4 -> case model.state of
                         Lesson ->
                             {model | lessonState = Lesson4}
                         otherwise ->
                           model
                     
                     MoveToLesson5 -> case model.state of
                         Lesson ->
                             {model | lessonState = Lesson5}
                         otherwise ->
                           model
                     
                     MoveToLesson6 -> case model.state of
                         Lesson ->
                             {model | lessonState = Lesson6}
                         otherwise ->
                           model
                     
                     MoveToWalkthrough1 -> case model.state of
                         Walkthrough ->
                             {model | walkthroughState = Walkthrough1}
                         otherwise ->
                           model
                           
                     MoveToWalkthrough2 -> case model.state of
                         Walkthrough ->
                             {model | walkthroughState = Walkthrough2}
                         otherwise ->
                           model
                     
                     MoveToWalkthrough3 -> case model.state of
                         Walkthrough ->
                             {model | walkthroughState = Walkthrough3}
                         otherwise ->
                           model
                     
                     MoveToWalkthroughSlide1 -> case model.state of
                         Walkthrough ->
                             {model | walkthroughSlideState = Slide1}
                         otherwise ->
                           model                     
                     
                     MoveToWalkthroughSlide2 -> case model.state of
                         Walkthrough ->
                             {model | walkthroughSlideState = Slide2}
                         otherwise ->
                           model
                                                
                     MoveToWalkthroughSlide3 -> case model.state of
                         Walkthrough ->
                             {model | walkthroughSlideState = Slide3}
                         otherwise ->
                           model
                                                      
                     DispEasySol1 -> 
                            {model | tryState = EasySol1}
                                                                                
                     DispEasySol2 ->
                            {model | tryState = EasySol2}
                           
                     DispEasySol3 ->
                            {model | tryState = EasySol3}
                           
                     DispEasySol4 ->
                            {model | tryState = EasySol4}
                         
                     DispEasySol5 ->
                            {model | tryState = EasySol5}
                            
                     DispMedSol1 ->
                            {model | tryState = MedSol1}
                            
                     DispMedSol2 ->
                            {model | tryState = MedSol2}
                            
                     DispMedSol3 ->
                            {model | tryState = MedSol3}
                    
                     DispMedSol4 ->
                            {model | tryState = MedSol4}
                            
                     DispMedSol5 ->
                            {model | tryState = MedSol5}
                            
                     DispHardSol1 ->
                            {model | tryState = HardSol1}
                     
                     DispHardSol2 ->
                            {model | tryState = HardSol2}
                            
                     DispHardSol3 ->
                            {model | tryState = HardSol3}       
                     
                     DispHardSol4 ->
                            {model | tryState = HardSol4}
                            
                     MoveToResources -> 
                            {model | state = Resources}
                            
                     MoveToInteract ->
                           {model | tryState = Interact, pos1 = (-60,20) , pos2 = (-60,50) , pos3 = (-60,-40) , pos4 = (-60,-10), firstPiece = Free, secondPiece = Free, thirdPiece = Free, fourthPiece = Free }
                     
                     Drag1 (x, y) -> { model | pos1 = (x , y) }
                     
                     Drag2 (x, y) -> { model | pos2 = (x , y) }
                     
                     Drag3 (x, y) -> { model | pos3 = (x , y) }
                     
                     Drag4 (x, y) -> { model | pos4 = (x , y) }
                     
                     ChangeToRelease -> { model | dragState = Released,
                                        firstPiece = if getX model.pos1 >= 0 && getX model.pos1 <= 40 && getY model.pos1 >= 20 && getY model.pos1 <= 40 then Locked else Free,
                                        secondPiece = if getX model.pos2 >= 50 && getX model.pos2 <= 90 && getY model.pos2 >= 20 && getY model.pos2 <= 40 then Locked else Free,
                                        thirdPiece = if getX model.pos3 >= 0 && getX model.pos3 <= 40 && getY model.pos3 >= -10 && getY model.pos3 <= 10 then Locked else Free,
                                        fourthPiece = if getX model.pos4 >= 0 && getX model.pos4 <= 40 && getY model.pos4 >= -40 && getY model.pos4 <= -20 then Locked else Free
                                        }
                                        
                     ChangeToDragging1 -> { model | dragState = Dragging1
                                        }
                                        
                     ChangeToDragging2 -> { model | dragState = Dragging2
                                        }
                                        
                     ChangeToDragging3 -> { model | dragState = Dragging3
                                        }
                                        
                     ChangeToDragging4-> { model | dragState = Dragging4
                                        }
                     
button msg tex colour = group [roundedRect 70 15 2
                          |> filled colour
                      , text tex
                          |> filled black
                          |> scale 0.8
                          |> move (-30, -5)
                      ] |> notifyTap msg
                      
bigbutton msg tex colour = group [roundedRect 100 15 2
                          |> filled colour
                      , text tex
                          |> filled black
                          |> scale 0.8
                          |> move (-30, -5)
                      ] |> notifyTap msg
                      
cloud = group [
        circle 10
        |> filled white
        ,
        circle 10
        |> filled white
        |> move (8,5)
        ,
        circle 10
        |> filled white
        |> move (8,0)
        ,
        circle 10
        |> filled white
        |> move (16,0)
        ]
        
rtriangle col = polygon [(0,0),(0,-20),(30,0)] |> filled col

trianglepattern = group [
        rtriangle black
        |> scale 0.5
        |> rotate (degrees 120)
        |> move (-60, -50)
        ,
        rtriangle black
        |> scale 0.7
        |> rotate (degrees 30)
        |> move (60, 40)
        ,
        rtriangle white
        |> scale 0.5
        |> rotate (degrees 60)
        |> move (-10, 50)
        ,
        rtriangle grey
        |> scale 0.3
        |> rotate (degrees -60)
        |> move (50, -55)
        ,
        rtriangle black
        |> scale 0.3
        |> rotate (degrees -10)
        |> move (-90, 35)
        ,
        rtriangle white
        |> scale 0.3
        |> rotate (degrees -50)
        |> move (0, -50)
        ,
        rtriangle grey
        |> scale 0.5
        |> rotate (degrees -20)
        |> move (-60, 60)
        ]

youtube = group [
        roundedRect 10 8 3
        |> filled red
        ,
        triangle 2
        |> filled white
        ]
        
khan = group [
        ngon 6 6
        |> filled (rgb 8 158 98)
        ,
        curve (0,0) [Pull (3,3) (6,0)]
        |> filled white
        |> rotate (degrees 45)
        |> move (0,-3)
        ,
        curve (0,0) [Pull (3,3) (6,0)]
        |> filled white
        |> rotate (degrees -135)
        |> move (4,1)
        ,
        curve (0,0) [Pull (3,3) (6,0)]
        |> filled white
        |> rotate (degrees 135)
        |> move (0,-3)
        ,
        curve (0,0) [Pull (3,3) (6,0)]
        |> filled white
        |> rotate (degrees -45)
        |> move (-4,1)
        ,
        circle 1.5
        |> filled white
        |> move (0,2)
        ]
        
getX (x, y) = x
getY (x, y) = y

outlines = group [
        polygon [(50,40),(90,40),(90,20),(50,20),(50,40)]
        |> outlined (dashed 1) grey
        ,
        polygon [(0,40),(40,40),(40,20),(0,20),(0,40)]
        |> outlined (dashed 1) grey
        ,
        polygon [(0,10),(40,10),(40,-10),(0,-10),(0,10)]
        |> outlined (dashed 1) grey
        ,
        polygon [(0,-20),(40,-20),(40,-40),(0,-40),(0,-20)]
        |> outlined (dashed 1) grey
        ]
        
piece1 = group [
        rect 40 20
        |> filled grey
        ,
        text "______"
        |> filled black
        |> move (-18,2)
        ,
        text "__   __"
        |> filled black
        |> move (-17,7)
        ,
        text "__  ___"
        |> filled black
        |> move (-17,-3)
        ,
        text "+"
        |> filled black
        |> scale 0.5
        |> move (-4,-7)
        ,
        text "+"
        |> filled black
        |> scale 0.5
        |> move (-3,3)
        ,
        text "1                  cos(x)"
        |> filled black
        |> scale 0.3
        |> move (-12,6)
        ,
        text "sin(x)               sin(x)"
        |> filled black
        |> scale 0.3
        |> move (-15,1)
        ,
        text "sin(x)         sin(x)cos(x)"
        |> filled black
        |> scale 0.3
        |> move (-15,-4)
        ,
        text "cos(x)             cos(x)"
        |> filled black
        |> scale 0.3
        |> move (-15,-9)
        ]

piece2 = group [
        rect 40 20
        |> filled grey
        ,
        text "__    __"
        |> filled black
        |> move (-18,2)
        ,
        text "x"
        |> filled black
        |> move (-3,-3)
        |> scale 0.5
        ,
        text "cos(x)             1"
        |> filled black
        |> scale 0.4
        |> move (-17,3)
        ,
        text "sin(x)           sin(x)"
        |> filled black
        |> scale 0.4
        |> move (-17,-6)
        ]

piece3 = group [
        rect 40 20
        |> filled grey
        ,
        text "______"
        |> filled black
        |> move (-18,2)
        ,
        text "____"
        |> filled black
        |> move (-12,7)
        ,
        text "____"
        |> filled black
        |> move (-12,-3)
        ,
        text "1 + cos(x)"
        |> filled black
        |> scale 0.3
        |> move (-8,6)
        ,
        text "sin(x)"
        |> filled black
        |> scale 0.3
        |> move (-5,1)
        ,
        text "sin(x)(1 + cos(x))"
        |> filled black
        |> scale 0.3
        |> move (-12,-4)
        ,
        text "cos(x)"
        |> filled black
        |> scale 0.3
        |> move (-5,-9)
        ]

piece4 = group [
        rect 40 20
        |> filled grey
        ,
        text "___ ___"
        |> filled black
        |> move (-19.5,2)
        ,
        text "x"
        |> filled black
        |> move (-3,-3)
        |> scale 0.3
        ,
        text "1 + cos(x)        cos(x)"
        |> filled black
        |> scale 0.3
        |> move (-17,3)
        ,
        text "sin(x)                sin(x)(1 + cos(x))"
        |> filled black
        |> scale 0.2
        |> move (-13,-4)
        ,
        text "/"
        |> filled black
        |> rotate (degrees -90)
        |> move (-11,4)
        |> scale 1.5
        ,
        text "/"
        |> filled black
        |> rotate (degrees -90)
        |> move (9,-2)
        |> scale 1
        ]
