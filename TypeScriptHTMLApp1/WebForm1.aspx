<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TypeScriptHTMLApp1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="Script/phaser.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       
    </form>
    <script>
        //http://www.phaser.io/tutorials/making-your-first-phaser-3-game
        var config = {
            type: Phaser.AUTO,
            width: 800,
            height: 600,
            physics: {
                default: 'arcade',
                arcade: {
                    gravity: { y: 300 },
                    debug: false
                }
            },
            scene: {
                preload: preload,
                create: create,
                update: update
            }
        };

        var game = new Phaser.Game(config);

        function preload()
        {
            this.load.setBaseURL('http://labs.phaser.io');
            this.load.image('sky', 'src/games/firstgame/assets/sky.png');
            this.load.image('ground', 'src/games/firstgame/assets/platform.png');
            this.load.image('star', 'src/games/firstgame/assets/star.png');
            this.load.image('bomb', 'src/games/firstgame/assets/bomb.png');
            this.load.spritesheet('dude',
                'src/games/firstgame/assets/dude.png',
                { frameWidth: 32, frameHeight: 48 }
            );
        }

        var platforms;

        function create()
        {
            this.add.image(400, 300, 'sky');

            platforms = this.physics.add.staticGroup();

            platforms.create(400, 568, 'ground').setScale(2).refreshBody();

            platforms.create(600, 400, 'ground');
            platforms.create(50, 250, 'ground');
            platforms.create(750, 220, 'ground');
        }

        function update()
        {
        }
    </script>
    
</body>
</html>
