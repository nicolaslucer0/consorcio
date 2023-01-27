import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            width: double.infinity,
            child: Card(
              child: Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Expensas de enero"),
                          Text("Detalle")
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        child: Column(
                          children: [
                            const Text("Usted posee deuda"),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: const Text(
                                "\$15.000",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.blue),
                                ),
                              ),
                            ),
                            onPressed: () => "",
                            child: const Text(
                              "Opciones de pago",
                              style: TextStyle(fontSize: 14),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            width: double.infinity,
            child: Card(
              child: Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Últimos comunicados"),
                          Text("Ver todos")
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text("Esto es un comunicado bien piola"),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text("Esto es un comunicado bien piola"),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
