import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isInvisible = true;
  String name = '';
  TextEditingController _nameController = TextEditingController();
  TextEditingController _dateTimeController = TextEditingController();

  List<String> superHeros = [
    "Superman",
    "Batman",
    "WonderWoman",
    "Green Lantern"
  ];

  String valueAux = "Superman";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "InputPage",
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                maxLines: 1,
                textAlign: TextAlign.start,
                maxLength: 20,
                cursorColor: Colors.redAccent,
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  label: Text(
                    "Correo Electronico",
                  ),
                  hintText: "Ingresa tu correo electronico",
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.35),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                  icon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.alternate_email),
                  suffixIcon: Icon(Icons.email_outlined),
                ),
                onChanged: (String value) {
                  print(value);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Buscar producto",
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  enabled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 4.0,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.redAccent,
                      width: 4.0,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 4.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mail),
                  prefixIcon: Icon(Icons.check_circle_outline),
                  label: Text(
                    "Buscar",
                  ),
                  hintText: "Ingresa el producto a buscar...",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.lightGreenAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.lightGreenAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 12,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Buscar producto...",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.black.withOpacity(0.37),
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(18.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.pinkAccent.withOpacity(0.4),
                            offset: const Offset(4, 4),
                            blurRadius: 7.0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: isInvisible,
                decoration: InputDecoration(
                  hintText: "Ingrese su Contraseña",
                  suffixIcon: IconButton(
                    icon: isInvisible
                        ? Icon(Icons.remove_red_eye)
                        : Icon(Icons.remove_red_eye_outlined),
                    onPressed: () {
                      isInvisible = !isInvisible;
                      setState(() {});
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: _nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  label: Text(
                    "Ingrese tu nombre",
                  ),
                ),
                // onChanged: (String value){
                //   name= value;
                // },
                // onTap: (){
                //   print("On Tap...");
                // },
              ),
              ElevatedButton(
                onPressed: () {
                  getNameData();
                  setState(() {});
                },
                child: Text(
                  "Mostrar Valor!",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: _dateTimeController,
                toolbarOptions: ToolbarOptions(
                  copy: false,
                  cut: false,
                  paste: false,
                  selectAll: false,
                ),
                readOnly: true,
                decoration: InputDecoration(
                  hintText: "Fecha de Nacimiento",
                  suffixIcon: Icon(Icons.date_range),
                ),
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  selectDate();
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              DropdownButton(
                value: valueAux,
                items: superHeros
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                //items: listaItems(),
                onChanged: (value) {
                  //print(value.toString());
                  valueAux = value.toString();
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getNameData() {
    print(_nameController.text);
  }

  selectDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2099),
    );
    if (dateSelected != null)
      _dateTimeController.text = dateSelected.toString().substring(0, 10);
    //setState(() {});
  }

  List<DropdownMenuItem<String>> listaItems() {
    List<DropdownMenuItem<String>> listaSuperHero = [];
    superHeros.forEach((element) {
      listaSuperHero.add(DropdownMenuItem(
        value: element,
        child: Text(
          element,
        ),
      ));
    });

    return listaSuperHero;
  }
}
