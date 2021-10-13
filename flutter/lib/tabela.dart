

import 'package:flutter/material.dart';


void main() => runApp(const Tabela());

/// This is the main application widget.
class Tabela extends StatelessWidget {
  const Tabela({Key? key}) : super(key: key);

  static const String _title = 'Tabela de Horários da Semana';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Nome',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Dia',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Horários',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('João')),
            DataCell(Text('Terça')),
            DataCell(Text('18:00 as 8:00')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Maria')),
            DataCell(Text('Quinta-feira')),
            DataCell(Text('13:00 as 19:00')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Jorge')),
            DataCell(Text('Segunda-Feira')),
            DataCell(Text('19:00 as 23:00')),
          ],
        ),
      ],
    );
  }
}
