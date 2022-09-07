import 'package:airplane/cubit/transaction_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TranscationPage extends StatefulWidget {
  const TranscationPage({Key? key}) : super(key: key);

  @override
  State<TranscationPage> createState() => _TranscationPageState();
}

class _TranscationPageState extends State<TranscationPage> {
  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return Center(
            child: CircularProgressIndicator(
              color: kPrimaryColor,
            ),
          );
        } else if (state is TransactionSuccess) {
          if (state.transactions.length == 0) {
            return Center(
              child: Text('Kamu belum memiliki transaksi'),
            );
          } else {
            return ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                itemCount: state.transactions.length,
                itemBuilder: (context, index) {
                  return TransactionCard(
                    state.transactions[index],
                  );
                });
          }
        }

        return Center(
          child: Text('Transaction Page'),
        );
      },
    );
  }
}
