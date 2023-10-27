import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendar extends StatefulWidget {
  const MyCalendar({super.key});

  @override
  State<MyCalendar> createState() => _MyCalendar();
}

class _MyCalendar extends State<MyCalendar> {
DateTime today = DateTime.now(); //Menginialisasi tanggal saat ini 

void _selectedDay (DateTime day, DateTime focusedDay){
  setState(() {
    today = day; // Memperbarui tanggal saat ini menjadi hari yang dipilih di kalender
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender Apps',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        backgroundColor:Colors.grey,
      ),
      body: content(), // Untuk menampilkan konten kalender
    );
  }

  Widget content(){
    return Column(
      children: [
        // Tempat kalender 
         Card(
          margin: EdgeInsets.all(16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            
          ),
          elevation: 4,
           child: Container(
            color: Colors.white.withOpacity(0.5), 
            // Kalender
            child: TableCalendar(
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              availableGestures:AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today), //Menandai hari yang dipilh
              focusedDay: today, 
              firstDay: DateTime.utc(2023, 1, 1), 
              lastDay: DateTime.utc(2033, 12, 31),
              onDaySelected: _selectedDay,
            ),
          ),
         ),
         Text("Hari yang dipilih :" + today.toString().split(" ")[0]),
      ],
    );
  }
}