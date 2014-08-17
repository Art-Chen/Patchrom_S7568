.class Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;
.super Ljava/lang/Object;
.source "WebviewScaleGestureDetector.java"

# interfaces
.implements Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebviewScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DummyOnScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebviewScaleGestureDetector;


# direct methods
.method constructor <init>(Landroid/webkit/WebviewScaleGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;->this$0:Landroid/webkit/WebviewScaleGestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;->this$0:Landroid/webkit/WebviewScaleGestureDetector;

    const/4 v1, 0x2

    iput v1, v0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    .line 77
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "WebviewScaleGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DummyOnScaleGestureListener onScale mGestureAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;->this$0:Landroid/webkit/WebviewScaleGestureDetector;

    iget v2, v2, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    const/4 v3, 0x1

    .line 84
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;->this$0:Landroid/webkit/WebviewScaleGestureDetector;

    iput v3, v0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    .line 85
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "WebviewScaleGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DummyOnScaleGestureListener onScaleBegin mGestureAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;->this$0:Landroid/webkit/WebviewScaleGestureDetector;

    iget v2, v2, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return v3
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .locals 3
    .parameter "detector"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;->this$0:Landroid/webkit/WebviewScaleGestureDetector;

    const/4 v1, 0x3

    iput v1, v0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    .line 93
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "WebviewScaleGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DummyOnScaleGestureListener onScaleEnd mGestureAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector$DummyOnScaleGestureListener;->this$0:Landroid/webkit/WebviewScaleGestureDetector;

    iget v2, v2, Landroid/webkit/WebviewScaleGestureDetector;->mGestureAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void
.end method
