import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_storage/controllers/search_bar/search_bar_bloc.dart';
import 'package:my_storage/core/constant/app_colors.dart';
import 'package:my_storage/core/constant/app_styles.dart';
import 'package:my_storage/core/data/static/products_data.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    FocusNode _focusNode = FocusNode();

    return BlocProvider(
      create: (context) => SearchBarBloc()..add(SearchIconEvent()),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(98),
            child: BlocBuilder<SearchBarBloc, SearchBarState>(
              builder: (context, state) {
                _focusNode.addListener(() {
                  if (!_focusNode.hasFocus) {
                    context.read<SearchBarBloc>().add(SearchIconEvent());
                  }
                });
                if (state is SearchIconState) {
                  return AppBar(
                    leading: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: AppColors.white,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                    title: IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: AppColors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        context.read<SearchBarBloc>().add(SearchOpenBarEvent());
                      },
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'المنتجات',
                          style: AppStyles.styleInterBold30(context),
                        ),
                      ),
                    ],
                  );
                } else {
                  return AppBar(
                    leading: const SizedBox(),
                    title: SizedBox(
                      width: width * 0.6,
                      child: TextFormField(
                        focusNode: _focusNode,
                        textDirection: TextDirection.rtl,
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: '    البحث',
                          hintTextDirection: TextDirection.rtl,
                          hintStyle: AppStyles.styleInter20(context)
                              .copyWith(color: AppColors.white),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.white)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.white)),
                          disabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.white)),
                          suffixIcon: const Icon(
                            Icons.search,
                            color: AppColors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    actions: [
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.1, top: 10),
                        child: IconButton(
                            onPressed: () {
                              context
                                  .read<SearchBarBloc>()
                                  .add(SearchIconEvent());
                            },
                            icon: const Icon(Icons.close,
                                color: AppColors.white)),
                      )
                    ],
                  );
                }
              },
            ),
          ),
          body: Column(
            children: [
              Container(
                height: 56,
                color: AppColors.buttonColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('المبيع', style: AppStyles.styleInterBold20(context)),
                    Text('الشراء', style: AppStyles.styleInterBold20(context)),
                    Text('الكمية', style: AppStyles.styleInterBold20(context)),
                    Text('المنتج', style: AppStyles.styleInterBold20(context)),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: productsData.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Container(
                      height: 75,
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 2,
                            offset: Offset(0, 0),
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(productsData[index].soldPrice.toString(),
                              style: AppStyles.styleInterBold20(context)),
                          Text(productsData[index].buyPrice.toString(),
                              style: AppStyles.styleInterBold20(context)),
                          Text(productsData[index].quantity.toString(),
                              style: AppStyles.styleInterBold20(context)),
                          Text(productsData[index].productName,
                              style: AppStyles.styleInterBold20(context)),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
