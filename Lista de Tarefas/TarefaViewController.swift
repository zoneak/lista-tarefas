//
//  TarefaViewController.swift
//  Lista de Tarefas
//
//  Created by Adriano Kaito on 06/12/18.
//  Copyright © 2018 AK. All rights reserved.
//

import UIKit

class TarefaViewController: UIViewController {

    @IBOutlet weak var tarefaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        if let tarefa = tarefaTextField.text {
            let tarefaUserDefaults = TarefaUserDefaults()
            tarefaUserDefaults.salvarTarefa(tarefa: tarefa)
            tarefaTextField.text = ""
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
