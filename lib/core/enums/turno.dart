enum Turno {
  turnoA(
    id: 1,
    label: 'Turno A',
    horarios: ["07:00", "08:00", "09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "14:20"],
  ),
  turnoB(
    id: 2,
    label: 'Turno B',
    horarios: ["15:00", "16:00", "17:00", "18:00", "19:00", "20:00", "21:00", "22:00", "22:40"],
  ),
  turnoC(
    id: 3,
    label: 'Turno C',
    horarios: ["23:00", "00:00", "01:00", "02:00", "03:00", "04:00", "05:00", "06:00"],
  );

  const Turno({required this.id, required this.label, required this.horarios});

  final int id;
  final String label;
  final List<String> horarios;

  static Turno fronId(int id) {
    return Turno.values.firstWhere(
      (value) => value.id == id,
      orElse: () => throw Exception('Id de TipoBarril inválido: $id'),
    );
  }
}
