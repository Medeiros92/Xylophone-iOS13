import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        let letter = sender.currentTitle
        
        //Executa o som do botao clicado
        playSound(comand : letter!)
    }
    //Função que recebe o botao clicado
    func playSound(comand :String) {
        let url = Bundle.main.url(forResource: comand, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
