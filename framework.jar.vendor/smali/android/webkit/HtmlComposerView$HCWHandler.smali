.class public Landroid/webkit/HtmlComposerView$HCWHandler;
.super Landroid/os/Handler;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HCWHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 2062
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2064
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2073
    :goto_0
    return-void

    .line 2066
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    sget v1, Landroid/webkit/HtmlComposerView;->operSel:I

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_0

    .line 2069
    :pswitch_1
    const-string v0, "HtmlComposerView"

    const-string v1, "HCWHandler UPDATE_RICHTEXT_TOOLBAR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$HCWHandler;->this$0:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_0

    .line 2064
    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
