.class public Landroid/webkit/WebView$SelectionOffset;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionOffset"
.end annotation


# instance fields
.field public endOffset:I

.field public startOffset:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter
    .parameter "stOff"
    .parameter "endOff"

    .prologue
    .line 9238
    iput-object p1, p0, Landroid/webkit/WebView$SelectionOffset;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9239
    iput p2, p0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    .line 9240
    iput p3, p0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    .line 9241
    return-void
.end method
