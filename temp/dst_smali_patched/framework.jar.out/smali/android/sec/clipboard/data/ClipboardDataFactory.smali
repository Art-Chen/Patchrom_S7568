.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .parameter "format"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
