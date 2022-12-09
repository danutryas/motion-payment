import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghapus debug banner
      title: 'Motion',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Motion'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            // Navigator.pop(context);
          },
          child: Container(
            height: 50,
            width: 50,
            // margin: const EdgeInsets.only(left: 24.0),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Icon(
              Icons.arrow_back,
              color: Colors.green[900],
              size: 28,
            ),
          ),
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.green[900],
              size: 28,
            ),
          )
        ],
      ),
      body: const MyContainerApp(),
    );
  }
}

class MyContainerApp extends StatelessWidget {
  const MyContainerApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  "Total Tagihan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 4),
                Text(
                  "Rp1.772.500",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Kartu Kredit / Debit",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Transaksi Kredit dan Debit",
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Nomor Kartu",
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.black12)),
                        hintText: "Contoh  : 1234 5678 9122 3221",
                        hintStyle:
                            TextStyle(color: Colors.black26, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    MyInputWidget(
                      label: "Exp Date",
                      hint: "MM / YY",
                    ),
                    SizedBox(width: 30.0),
                    MyInputWidget(
                      label: "CVV",
                      hint: "123",
                    ),
                  ],
                ),
                const SizedBox(height: 25.0),
                Container(
                  width: double.infinity,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(
                      width: 3,
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.credit_card,
                              color: Colors.black,
                              size: 32,
                            ),
                            SizedBox(width: 30),
                            Text(
                              "Pilih Pembayaran",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: Colors.black,
                          size: 32,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ))
          ],
        ));
  }
}

class MyInputWidget extends StatelessWidget {
  const MyInputWidget({
    super.key,
    required this.label,
    required this.hint,
  });

  final String label;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.black54),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: 140.0,
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black12)),
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.black26, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
