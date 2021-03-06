Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(          //Column Widget + ScrollView. Container height is required
        children: transactions.map((tx) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  )),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$ ${tx.amount}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      tx.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      //DateFormat().format(tx.date),               //January 14 2020 10:35:22 AM
                      //DateFormat('yyyy-MM-dd').format(tx.date),   //2020-01-14
                      //DateFormat('yyyy/MM/dd').format(tx.date),   //2020/01/14
                      DateFormat.yMMMd().format(tx.date), //Jan 14, 2020
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
