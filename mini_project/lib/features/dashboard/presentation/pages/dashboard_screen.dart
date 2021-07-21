import 'package:flutter/material.dart';
import 'package:mini_project/theme/color.dart';
import 'package:mini_project/theme/textstyle.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formkey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    var provinsiOptions = ["Jakarta", "Bandung", "Banten"];
    var kotaOptions = ["Cengkareng", "Meruya", "Joglo"];
    var kecamatanOptions = [" ", " "];
    var kelurahanOptions = [" ", " "];
    var rtOptions = [
      "01",
      "02",
      "03",
      "04",
      "05",
      "06",
      "07",
      "08",
      "09",
      "10"
    ];
    var rwOptions = [
      "01",
      "02",
      "03",
      "04",
      "05",
      "06",
      "07",
      "08",
      "09",
      "10"
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.lg,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text('Next'),
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            color: ColorPalette.lg,
            height: 75.0,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 130, 0),
              child: Column(
                children: [
                  Text(
                    'Lengkapi Data Diri',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text("  Mohon Untuk Melengkapi Data Diri Anda"),
                ],
              ),
            ),
          ),
          preferredSize: Size.fromHeight(75.0),
        ),
      ),
      body: FormBuilder(
        key: _formkey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 10, 90, 0),
              child: Text(
                "Nama",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: FormBuilderTextField(
                  onChanged: (text) {},
                  decoration: InputDecoration(
                      labelText: "Nama",
                      fillColor: ColorPalette.lg,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Nama"),
                  name: 'nama'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 0, 90, 0),
              child: Center(
                child: Container(
                  child: FormBuilderChoiceChip(
                    decoration: InputDecoration(labelText: 'Jenis Kelamin'),
                    alignment: WrapAlignment.spaceEvenly,
                    name: 'jeniskelamin',
                    validator: FormBuilderValidators.required(context),
                    options: [
                      'Laki-Laki',
                      'Perempuan',
                    ]
                        .map((jk) => FormBuilderFieldOption(value: jk))
                        .toList(growable: false),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 30, 30, 30),
              child: Row(
                children: [
                  Flexible(
                    child: FormBuilderTextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            labelText: "Tempat",
                            fillColor: ColorPalette.lg,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Tempat"),
                        name: 'Tempat'),
                  ),
                  SizedBox(
                    width: 20.20,
                    height: 20.0,
                  ),
                  Flexible(
                    child: FormBuilderTextField(
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2019, 1),
                            lastDate: DateTime(2021, 12),
                          );
                        },
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.date_range),
                            contentPadding: EdgeInsets.all(10),
                            labelText: "Tanggal Lahir",
                            fillColor: ColorPalette.lg,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "dd/MM/YYYY"),
                        name: 'Tanggal Lahir'),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            ),
            Row(children: <Widget>[
              Text("Alamat KTP"),
              Expanded(
                  child: Divider(
                color: Colors.grey,
                thickness: 1,
              )),
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 10, 90, 0),
              child:
                  Text("Jalan", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: FormBuilderTextField(
                  decoration: InputDecoration(
                      labelText: "Jalan",
                      fillColor: ColorPalette.lg,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Jalan"),
                  name: 'jalan'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 20, 90, 0),
              child: Text("Provinsi",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: FormBuilderDropdown(
                name: 'provinsi',
                decoration: InputDecoration(
                  labelText: ' ',
                  fillColor: ColorPalette.lg,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
                // initialValue: 'Male',
                allowClear: true,
                hint: Text('Pilih Provinsi'),
                validator: FormBuilderValidators.compose(
                    [FormBuilderValidators.required(context)]),
                items: provinsiOptions
                    .map((provinsi) => DropdownMenuItem(
                          value: provinsi,
                          child: Text('$provinsi'),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 20, 90, 0),
              child: Text("Kota/Kabupaten",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: FormBuilderDropdown(
                name: 'kota',
                decoration: InputDecoration(
                  labelText: ' ',
                  fillColor: ColorPalette.lg,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
                // initialValue: 'Male',
                allowClear: true,
                hint: Text('Pilih Kota/Kabupaten'),
                validator: FormBuilderValidators.compose(
                    [FormBuilderValidators.required(context)]),
                items: kotaOptions
                    .map((kota) => DropdownMenuItem(
                          value: kota,
                          child: Text('$kota'),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 20, 90, 0),
              child: Text("Kecamatan",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: FormBuilderDropdown(
                name: 'kecamatan',
                decoration: InputDecoration(
                  labelText: ' ',
                  fillColor: ColorPalette.lg,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
                // initialValue: 'Male',
                allowClear: true,
                hint: Text('Pilih Kecamatan'),
                validator: FormBuilderValidators.compose(
                    [FormBuilderValidators.required(context)]),
                items: kecamatanOptions
                    .map((kecamatan) => DropdownMenuItem(
                          value: kecamatan,
                          child: Text('$kecamatan'),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 20, 90, 0),
              child: Text("Kelurahan",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: FormBuilderDropdown(
                name: 'kelurahan',
                decoration: InputDecoration(
                  labelText: ' ',
                  fillColor: ColorPalette.lg,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
                // initialValue: 'Male',
                allowClear: true,
                hint: Text('Pilih Kelurahan/Desa'),
                validator: FormBuilderValidators.compose(
                    [FormBuilderValidators.required(context)]),
                items: kelurahanOptions
                    .map((kelurahan) => DropdownMenuItem(
                          value: kelurahan,
                          child: Text('$kelurahan'),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 30, 30, 30),
              child: Row(
                children: [
                  Flexible(
                    child: FormBuilderDropdown(
                      name: 'rt',
                      decoration: InputDecoration(
                        labelText: 'RT',
                        fillColor: ColorPalette.lg,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      // initialValue: 'Male',
                      allowClear: true,
                      hint: Text('Pilih RT'),
                      validator: FormBuilderValidators.compose(
                          [FormBuilderValidators.required(context)]),
                      items: rtOptions
                          .map((rt) => DropdownMenuItem(
                                value: rt,
                                child: Text('$rt'),
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    width: 20.20,
                    height: 20.0,
                  ),
                  Flexible(
                    child: FormBuilderDropdown(
                      name: 'rw',
                      decoration: InputDecoration(
                        labelText: 'RW',
                        fillColor: ColorPalette.lg,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      // initialValue: 'Male',
                      allowClear: true,
                      hint: Text('Pilih RW'),
                      validator: FormBuilderValidators.compose(
                          [FormBuilderValidators.required(context)]),
                      items: rwOptions
                          .map((rw) => DropdownMenuItem(
                                value: rw,
                                child: Text('$rw'),
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            ),
            Row(children: <Widget>[
              Text("Alamat Tempat Tinggal"),
              Expanded(
                  child: Divider(
                color: Colors.grey,
                thickness: 1,
              )),
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: FormBuilderCheckbox(
                name: 'accept_terms',
                initialValue: false,
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Samakan dengan Alamat KTP ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                validator: FormBuilderValidators.equal(
                  context,
                  true,
                  errorText: 'You must accept terms and conditions to continue',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 20, 90, 0),
              child:
                  Text("Jalan", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: FormBuilderTextField(
                  decoration: InputDecoration(
                      labelText: " ",
                      fillColor: ColorPalette.lg,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Jalan"),
                  name: 'jalan'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 20, 90, 0),
              child: Text("Provinsi",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: FormBuilderDropdown(
                name: 'provinsi',
                decoration: InputDecoration(
                  labelText: ' ',
                  fillColor: ColorPalette.lg,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
                // initialValue: 'Male',
                allowClear: true,
                hint: Text('Pilih Provinsi'),
                validator: FormBuilderValidators.compose(
                    [FormBuilderValidators.required(context)]),
                items: provinsiOptions
                    .map((provinsi) => DropdownMenuItem(
                          value: provinsi,
                          child: Text('$provinsi'),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 20, 90, 0),
              child: Text("Kota/Kabupaten",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: FormBuilderDropdown(
                name: 'kota',
                decoration: InputDecoration(
                  labelText: ' ',
                  fillColor: ColorPalette.lg,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
                // initialValue: 'Male',
                allowClear: true,
                hint: Text('Pilih Kota/Kabupaten'),
                validator: FormBuilderValidators.compose(
                    [FormBuilderValidators.required(context)]),
                items: kotaOptions
                    .map((kota) => DropdownMenuItem(
                          value: kota,
                          child: Text('$kota'),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 20, 90, 0),
              child: Text("Kecamatan",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: FormBuilderDropdown(
                name: 'kecamatan',
                decoration: InputDecoration(
                  labelText: ' ',
                  fillColor: ColorPalette.lg,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
                // initialValue: 'Male',
                allowClear: true,
                hint: Text('Pilih Kecamatan'),
                validator: FormBuilderValidators.compose(
                    [FormBuilderValidators.required(context)]),
                items: kecamatanOptions
                    .map((kecamatan) => DropdownMenuItem(
                          value: kecamatan,
                          child: Text('$kecamatan'),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 20, 90, 0),
              child: Text("Kelurahan/Desa",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: FormBuilderDropdown(
                name: 'kelurahan',
                decoration: InputDecoration(
                  labelText: ' ',
                  fillColor: ColorPalette.lg,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
                // initialValue: 'Male',
                allowClear: true,
                hint: Text('Pilih Kelurahan/Desa'),
                validator: FormBuilderValidators.compose(
                    [FormBuilderValidators.required(context)]),
                items: kelurahanOptions
                    .map((kelurahan) => DropdownMenuItem(
                          value: kelurahan,
                          child: Text('$kelurahan'),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 30, 30, 30),
              child: Row(
                children: [
                  Flexible(
                    child: FormBuilderDropdown(
                      name: 'rt',
                      decoration: InputDecoration(
                        labelText: 'RT',
                        fillColor: ColorPalette.lg,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      // initialValue: 'Male',
                      allowClear: true,
                      hint: Text('Pilih RT'),
                      validator: FormBuilderValidators.compose(
                          [FormBuilderValidators.required(context)]),
                      items: rtOptions
                          .map((rt) => DropdownMenuItem(
                                value: rt,
                                child: Text('$rt'),
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    width: 20.20,
                    height: 20.0,
                  ),
                  Flexible(
                    child: FormBuilderDropdown(
                      name: 'rw',
                      decoration: InputDecoration(
                        labelText: 'RW',
                        fillColor: ColorPalette.lg,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      // initialValue: 'Male',
                      allowClear: true,
                      hint: Text('Pilih RW'),
                      validator: FormBuilderValidators.compose(
                          [FormBuilderValidators.required(context)]),
                      items: rwOptions
                          .map((rw) => DropdownMenuItem(
                                value: rw,
                                child: Text('$rw'),
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      FocusScope.of(context).unfocus();
                    });
                  },
                  child: Text('Simpan'),
                )),
          ],
        ),
      ),
    );
  }
}
