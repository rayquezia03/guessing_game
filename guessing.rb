puts 'Hello, world!'

puts 'Type your name bellow, please:'
user_name = gets.chomp

puts '===================================================='

puts "Welcome #{user_name}!"

puts '===================================================='


ComeBackMenu = "yes"
RunningGame = "yes" 

while RunningGame == "yes" 
    while ComeBackMenu == "yes" 
        ComeBackMenu = " "

        puts 'Type:'
            puts '1 - Play:'
            puts '2 - Rules of Game:'
            puts '3 - exit Game:'
        puts 'Option:'
        choose = gets.to_i
        puts ''
        puts ''
    end

    case choose
        when 1 

            puts 'START THE GAME:'
            puts ''
            puts ''

            attempts = 5
            random = rand(0..20);

            # puts "#{random} is the drawn number!!"

            until attempts==0 do
                puts "------------------"  
                puts "attempts #{attempts}"
                puts "------------------"  

                puts "Type below your hint:"  
                numero = gets.to_i

                if numero == random
                    attempts -=1;
                
                    puts "CONGRULATIONS, #{user_name}! YOU WON THE GAME WITH #{finals_try = 5 - attempts} ATTEMPTS!" 
                    attempts = 0;
                    puts " "
                    puts "TYPE 'yes' FOR COME BACK MENU AND 'not' FOR EXIT THE GAME!"
                    ComeBackMenu = gets.chomp
                    puts " "
                    if(ComeBackMenu != "yes" )
                        RunningGame = "not"
                    end
                elsif numero < random
                    attempts -=1;
                    if attempts == 0
                        puts "YOU LOST THE GAME!!!"
                        puts ""
                        puts "TYPE 'yes' FOR COME BACK MENU AND 'not' FOR EXIT THE GAME!"
                    ComeBackMenu = gets.chomp
                    puts " "
                    if(ComeBackMenu != "yes" )
                        puts "EXITING DE GAME!!!"
                        RunningGame = "not"
                        exit!
                    end

                    end

                    puts "#{user_name}, try a BIGGER number!"
                    puts " "
                elsif numero > random
                    attempts -=1;
                    if attempts == 0
                        puts "VOCÊ PERDEU O JOGO:"
                        puts ""
                        puts "TYPE 'yes' FOR COME BACK MENU AND 'not' FOR EXIT THE GAME!"
                    ComeBackMenu = gets.chomp
                    puts " "
                    if(ComeBackMenu != "yes" )
                        puts "EXITING DE GAME!!!"
                        RunningGame = "not"
                        exit!
                    end

                    end
                    puts "#{user_name}, try a SMALLER number!"
                end
            end

        when 2
            puts "*********************************************************************"
            puts "RULES:"
            puts "THE GAME WORKS LIKE THIS: OUR SYSTEM WILL CHOOSE THE NUMBER AND YOU NEED TRY TO MATCH THE DRAWN NUMBER."

            puts "TYPE 'yes' FOR COME BACK MENU AND 'not' FOR EXIT THE GAME!"
            ComeBackMenu = gets.chomp
            
            if(ComeBackMenu != "yes" )
                puts "EXITING DE GAME!!!"
                RunningGame = "not"
            end
        when 3
            puts "EXITING THE GAME!"
            exit!
        else
            puts "Invalid Operation!"
            ComeBackMenu = "yes"
            
        end
end
