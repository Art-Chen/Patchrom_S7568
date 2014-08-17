.class public Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerStockListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayout:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 756
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;>;"
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    .line 757
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->mContext:Landroid/content/Context;

    .line 758
    iput-object p2, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->mContext:Landroid/content/Context;

    .line 759
    iput p3, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->mLayout:I

    .line 760
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 28
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 763
    const/16 v22, 0x0

    .line 764
    .local v22, row:Landroid/view/View;
    if-nez p2, :cond_3

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "layout_inflater"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 766
    .local v12, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->mLayout:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 770
    .end local v12           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;

    .line 772
    .local v23, tickerNewsData:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->getStockName()Ljava/lang/String;

    move-result-object v18

    .line 773
    .local v18, name:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->getStockPrice()Ljava/lang/String;

    move-result-object v19

    .line 774
    .local v19, price:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->getStockChange()Ljava/lang/String;

    move-result-object v4

    .line 775
    .local v4, change:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->getStockChangeRate()Ljava/lang/String;

    move-result-object v21

    .line 777
    .local v21, rate:Ljava/lang/String;
    const v24, 0x1020335

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 778
    .local v16, mStockName:Landroid/widget/TextView;
    const v24, 0x1020336

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 779
    .local v17, mStockPrice:Landroid/widget/TextView;
    const v24, 0x1020338

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 780
    .local v14, mStockChange:Landroid/widget/TextView;
    const v24, 0x1020339

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 782
    .local v15, mStockChangeRate:Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 784
    .local v13, isNum:Z
    new-instance v20, Ljava/text/DecimalFormat;

    const-string v24, "#,##0.##"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 785
    .local v20, priceFormat:Ljava/text/DecimalFormat;
    const/4 v11, 0x0

    .line 787
    .local v11, formattedPrice:Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v24, "#,##0.##"

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 788
    .local v7, changePriceFormat:Ljava/text/DecimalFormat;
    const/4 v10, 0x0

    .line 790
    .local v10, formattedChangePrice:Ljava/lang/String;
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v24, "0.00"

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 791
    .local v5, changePercentFormat:Ljava/text/DecimalFormat;
    const/4 v9, 0x0

    .line 794
    .local v9, formattedChangePercent:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 795
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 801
    :goto_1
    :try_start_1
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 802
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 803
    const/4 v13, 0x1

    .line 810
    :goto_2
    :try_start_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 811
    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 812
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "%"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .line 817
    :goto_3
    if-eqz v13, :cond_0

    .line 818
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 819
    .local v6, changePrice:Ljava/lang/Double;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 820
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_4

    .line 821
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 822
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 823
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 864
    .end local v6           #changePrice:Ljava/lang/Double;
    :cond_0
    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 870
    const v24, 0x1020334

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    const/high16 v25, -0x100

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 874
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 875
    const v24, 0x1020337

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 879
    :cond_2
    return-object v22

    .line 768
    .end local v4           #change:Ljava/lang/String;
    .end local v5           #changePercentFormat:Ljava/text/DecimalFormat;
    .end local v7           #changePriceFormat:Ljava/text/DecimalFormat;
    .end local v9           #formattedChangePercent:Ljava/lang/String;
    .end local v10           #formattedChangePrice:Ljava/lang/String;
    .end local v11           #formattedPrice:Ljava/lang/String;
    .end local v13           #isNum:Z
    .end local v14           #mStockChange:Landroid/widget/TextView;
    .end local v15           #mStockChangeRate:Landroid/widget/TextView;
    .end local v16           #mStockName:Landroid/widget/TextView;
    .end local v17           #mStockPrice:Landroid/widget/TextView;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #price:Ljava/lang/String;
    .end local v20           #priceFormat:Ljava/text/DecimalFormat;
    .end local v21           #rate:Ljava/lang/String;
    .end local v23           #tickerNewsData:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;
    :cond_3
    move-object/from16 v22, p2

    goto/16 :goto_0

    .line 796
    .restart local v4       #change:Ljava/lang/String;
    .restart local v5       #changePercentFormat:Ljava/text/DecimalFormat;
    .restart local v7       #changePriceFormat:Ljava/text/DecimalFormat;
    .restart local v9       #formattedChangePercent:Ljava/lang/String;
    .restart local v10       #formattedChangePrice:Ljava/lang/String;
    .restart local v11       #formattedPrice:Ljava/lang/String;
    .restart local v13       #isNum:Z
    .restart local v14       #mStockChange:Landroid/widget/TextView;
    .restart local v15       #mStockChangeRate:Landroid/widget/TextView;
    .restart local v16       #mStockName:Landroid/widget/TextView;
    .restart local v17       #mStockPrice:Landroid/widget/TextView;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #price:Ljava/lang/String;
    .restart local v20       #priceFormat:Ljava/text/DecimalFormat;
    .restart local v21       #rate:Ljava/lang/String;
    .restart local v23       #tickerNewsData:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;
    :catch_0
    move-exception v8

    .line 797
    .local v8, e:Ljava/lang/Exception;
    move-object/from16 v11, v19

    goto/16 :goto_1

    .line 804
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 805
    .restart local v8       #e:Ljava/lang/Exception;
    move-object v10, v4

    .line 806
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 813
    .end local v8           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 814
    .restart local v8       #e:Ljava/lang/Exception;
    move-object/from16 v9, v21

    goto/16 :goto_3

    .line 824
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #changePrice:Ljava/lang/Double;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_5

    .line 825
    const v24, -0xb70100

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 826
    const v24, 0x108048c

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 827
    const v24, -0xb70100

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 828
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_0

    .line 829
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 830
    const v24, 0x1080492

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 831
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 833
    :cond_6
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 834
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_7

    .line 835
    const v24, -0x5e5e5f

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 836
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 837
    const v24, -0x5e5e5f

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 838
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_8

    .line 839
    const v24, -0xb87220

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 840
    const v24, 0x108048b

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 841
    const v24, -0xb87220

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 842
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_0

    .line 843
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 844
    const v24, 0x1080491

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 845
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 848
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_a

    .line 849
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 850
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 851
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 852
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_b

    .line 853
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 854
    const v24, 0x108048a

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 855
    const/high16 v24, -0x17

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 856
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_0

    .line 857
    const v24, -0xb70100

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 858
    const v24, 0x1080490

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 859
    const v24, -0xb70100

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4
.end method
