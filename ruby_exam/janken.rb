# Ecrivez la logique pour que le joueur (vous) entre "0~2".
class Player
    def hand
      # Affichez un texte demandant au joueur de choisir un mouvement de pierre-papier-ciseaux.
      puts "Veuillez saisir un nombre.
  "
      puts "
  0: Goo, 1: Choki , 2: Par
  "
      # Assignez la valeur d'entrée du joueur à la variable "input_hand".
      # Conseil : regardez la méthode gets.
      input_hand = gets.chomp
# Si "input_hand" est l'un de "0, 1, 2", le processus d'itération est terminé, sinon (y compris les caractères alphabétiques), le processus d'itération est poursuivi.
        while true
               # puts "vous avez entré #{input_hand} qui eest de #{input_hand.class}"
              # puts "entree#{input_hand}"
                if ((input_hand.include?"0") || (input_hand.include?"1") || (input_hand.include?"2"))
                    return input_hand
                # si "input_hand" est l'un des "0, 1, 2".
                # Astuce : regardez la méthode include ?
                # retourner "input_hand" tel quel.
                # Astuce : Si vous voulez renvoyer une valeur de retour pour terminer le processus d'itération, utilisez "return".
                else
                # else Autrement.
                # Afficher un texte demandant au joueur d'entrer "0-2".
                puts "Veuillez saisir un nombre entre 0 et 2"
                puts "0: Goo, 1: Choki, 2: Par"
                # Assignez la valeur d'entrée du joueur à la variable "input_hand".
                input_hand = gets.chomp
                end
        end
    end
end

        
          # end if l'instruction se termine
  
  
      
    
      # Ecrire la logique pour que l'adversaire génère aléatoirement une valeur de "0~2".
class Enemy
    def main
        random = Random.new
        return random.rand(3)
    end
end
      # Écrire une logique pour que le joueur (vous) entre 0-2 et que l'ennemi génère aléatoirement 0-2 et joue à pierre-papier-ciseaux, et afficher le résultat sur la console.
      class Janken
        def pon(player_hand, enemy_hand)
          # Remplacez ["goo", "choki", "par"] la variable "janken".
      
      
          janken = ["Goo", "Choki", "Par"]
          #"Le coup de votre adversaire est #{coups de l'adversaire}." et la sortie
          puts "La main de votre adversaire est #{janken[enemy_hand]}."
          #Créer une logique pour jouer à pierre-papier-ciseaux à partir de la valeur de retour de la classe Player et de la valeur de retour de la classe Enemy.

          if player_hand == enemy_hand # la valeur de retour de la classe Player (player_hand) et la valeur de retour de la classe Enemy (enemy_hand) sont les mêmes.
            # "Aiko" est produit.
            puts "Aiko"
            return true
            # Retourne "vrai" pour exécuter pierre-papier-ciseaux de manière répétée.
            # Astuce : Vous pouvez utiliser "return" pour renvoyer une valeur de retour. Cependant, en Ruby, il est courant d'omettre "return" lorsqu'on renvoie une valeur de retour.
          elsif ((player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0))# Si la combinaison des éléments suivants.
            # (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
            #Imprimez "vous avez gagné".
            puts "You win"
            return false
            #Retourne "false" et termine pierre-papier-ciseaux.
          else
            puts "You loose"
            return false
            #Print "Vous avez perdu".
            #renvoie "false" et met fin au jeu pierre-papier-ciseaux.
          end
        end
    end
      # Écrire la logique pour exécuter le jeu de pierre-papier-ciseaux.
    class GameStart
        # En utilisant self, vous pouvez appeler la méthode jankenpon en utilisant le nom de la classe, sans instancier GameStart.
        def self.jankenpon
          # Remplacez le Player instancié par la variable "player".
      
      
          player = Player.new
          player_hand = player.hand
          #Assignez une instanciation d'Enemy à la variable "ennemi".
      
      
      
          enemy = Enemy.new
          enemy_hand = enemy.main
          #Assignez une instanciation de Janken à la variable "janken".
      
      
          janken = Janken.new
          next_game = true
          # Assigner "true" à la variable "next_game".
          # Si "next_game" est "false", il arrêtera l'itération, s'il est "true", il continuera l'itération.
          while next_game
            # Substituer la valeur (valeur de retour) renvoyée par l'exécution de pierre-papier-ciseaux dans la variable "next_game".
            # Exécuter rock-paper-ciseaux par "janken.pon(player.hand, enemy.hand)".
            next_game = janken.pon(player_hand, enemy_hand)
          end
        end
    end
      # Appeler la méthode jankenpon avec le nom de la classe.
      GameStart.jankenpon
  