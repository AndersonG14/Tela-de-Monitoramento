import 'package:flutter/material.dart';
import 'patient_dashboard_page.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  // Variável que guarda qual aba está selecionada (0 = Início, 1 = Sessões, etc)
  int _currentIndex = 0;

  // Lista de telas que serão exibidas
  final List<Widget> _pages = [
    const PatientDashboardPage(), // 0: Nossa tela completa
    const _DummyPage(title: 'Página de Sessões'), // 1
    const _DummyPage(title: 'Página de Progresso'), // 2 (Igual a sua foto!)
    const _DummyPage(title: 'Página de Perfil'), // 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      // O corpo da tela muda dinamicamente com base no index
      body: _pages[_currentIndex],

      // O Menu inferior que antes estava dentro do Dashboard, agora fica aqui na Casca
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          // Atualiza a tela quando o usuário clica em um ícone
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Sessões'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Progresso'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Perfil'),
        ],
      ),
    );
  }
}

// Uma tela falsa genérica para preencher as outras abas enquanto não as construímos
class _DummyPage extends StatelessWidget {
  final String title;
  const _DummyPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
    );
  }
}