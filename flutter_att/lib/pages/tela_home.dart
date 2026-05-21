import 'package:flutter/material.dart';
import '../widgets/card_icone.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {

  String _mensagem = "Nenhum botão clicado ainda.";

  void _atualizarMensagem(String opcao) {
    setState(() {
      _mensagem = "Você clicou em: $opcao";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App de Ícones'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                _mensagem,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            CardIcone(
              icone: Icons.person,
              titulo: "Perfil",
              descricao: "Gerencie seus dados pessoais e fotos.",
              textoBotao: "Acessar Perfil",
              cor: Colors.blue,
              aoClicar: () => _atualizarMensagem("Perfil"),
            ),


            CardIcone(
              icone: Icons.settings,
              titulo: "Configurações",
              descricao: "Ajuste notificações, segurança e privacidade.",
              textoBotao: "Abrir Ajustes",
              cor: Colors.orange,
              aoClicar: () => _atualizarMensagem("Configurações"),
            ),
            
            CardIcone(
              icone: Icons.favorite,
              titulo: "Favoritos",
              descricao: "Veja os itens que você salvou recentemente.",
              textoBotao: "Ver Favoritos",
              cor: Colors.red,
              aoClicar: () => _atualizarMensagem("Favoritos"),
            ),

            CardIcone(
              icone: Icons.notifications,
              titulo: "Notificações",
              descricao: "Confira as últimas novidades e alertas.",
              textoBotao: "Ver Alertas",
              cor: Colors.green,
              aoClicar: () => _atualizarMensagem("Notificações"),
            ),

            const SizedBox(height: 20),


           const Padding(
  padding: EdgeInsets.only(bottom: 24.0),
  child: Text(
    "Desenvolvido por: Guilherme Costa",
    style: TextStyle(
      fontSize: 14,
      fontStyle: FontStyle.italic,
      color: Colors.grey,
    ),
  ),
),

          ],
        ),
      ),
   
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _mensagem = "Você clicou no Botão Flutuante!";
          });
        },
        tooltip: 'Resetar/Ação Extra',
        child: const Icon(Icons.star),
      ),
    );
  }
}
