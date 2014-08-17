.class Landroid/webkit/WebView$14;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->doShortPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 12380
    iput-object p1, p0, Landroid/webkit/WebView$14;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 12387
    iget-object v0, p0, Landroid/webkit/WebView$14;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->removeTouchHighlight()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$3600(Landroid/webkit/WebView;)V

    .line 12388
    return-void
.end method
