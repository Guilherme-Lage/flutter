import 'package:flutter/material.dart';
import '../widgets/card_icone.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  // Estado que armazena a mensagem exibida na tela
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
            // Container superior que exibe a mensagem de feedback
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

            // Card 1: Perfil
            CardIcone(
              icone: Icons.person,
              titulo: "Perfil",
              descricao: "Gerencie seus dados pessoais e fotos.",
              textoBotao: "Acessar Perfil",
              cor: Colors.blue,
              aoClicar: () => _atualizarMensagem("Perfil"),
            ),

            // Card 2: Configurações
            CardIcone(
              icone: Icons.settings,
              titulo: "Configurações",
              descricao: "Ajuste notificações, segurança e privacidade.",
              textoBotao: "Abrir Ajustes",
              cor: Colors.orange,
              aoClicar: () => _atualizarMensagem("Configurações"),
            ),

            // Card 3: Favoritos
            CardIcone(
              icone: Icons.favorite,
              titulo: "Favoritos",
              descricao: "Veja os itens que você salvou recentemente.",
              textoBotao: "Ver Favoritos",
              cor: Colors.red,
              aoClicar: () => _atualizarMensagem("Favoritos"),
            ),

            // Card 4: Notificações
            CardIcone(
              icone: Icons.notifications,
              titulo: "Notificações",
              descricao: "Confira as últimas novidades e alertas.",
              textoBotao: "Ver Alertas",
              cor: Colors.green,
              aoClicar: () => _atualizarMensagem("Notificações"),
            ),

            const SizedBox(height: 20),

            // Desafio extra: Nome do aluno no final da tela
           const Padding(
  padding: EdgeInsets.only(bottom: 24.0),
  child: Text(
    "Desenvolvido por: Guilherme Costa",
    // O style deve ficar EXATAMENTE aqui, dentro do Text:
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
      // Desafio extra: FloatingActionButton que altera a mensagem da tela
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
