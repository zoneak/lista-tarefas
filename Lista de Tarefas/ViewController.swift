//
//  ViewController.swift
//  Lista de Tarefas
//
//  Created by Adriano Kaito on 06/12/18.
//  Copyright © 2018 AK. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var tarefas: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        atualizarListaTarefas()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        atualizarListaTarefas()
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            let tarefaUserDefault = TarefaUserDefaults()
            tarefaUserDefault.removerTarefa(indice: indexPath.row)
            atualizarListaTarefas()
            tableView.reloadData()
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaDefault = "celulaDefault"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaDefault, for: indexPath)
        celula.textLabel?.text = tarefas[indexPath.row]
        return celula
    }
    
    func atualizarListaTarefas() {
        let tarefaUserDefaults = TarefaUserDefaults()
        tarefas = tarefaUserDefaults.listarTarefas()
    }
}

