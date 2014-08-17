.class Lcom/android/internal/widget/PenGestureView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/PenGestureView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/PenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/PenGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 193
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PenGesture"

    const-string v1, "Pen DoubleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v1, v1, Lcom/android/internal/widget/PenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/PenGestureView;->access$202(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PenGestureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/PenGestureView;->access$302(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/PenGestureView;->access$402(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mOutofHorizonThreshold:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/PenGestureView;->access$502(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 206
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/16 v7, 0x64

    const/4 v4, 0x1

    .line 267
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v5}, Lcom/android/internal/widget/PenGestureView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 268
    if-eqz p1, :cond_5

    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 270
    .local v2, diffX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v3, v5

    .line 271
    .local v3, diffY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 272
    .local v0, absDiffX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 274
    .local v1, absDiffY:I
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mOutofHorizonThreshold:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$500(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-nez v5, :cond_1

    if-ge v1, v7, :cond_1

    if-gez v2, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mWidthMovingSlop:I
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$600(Lcom/android/internal/widget/PenGestureView;)I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 275
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "PenGesture"

    const-string v6, "Detected \ufffd\ufffdc"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mOutofHorizonThreshold:Z
    invoke-static {v5, v4}, Lcom/android/internal/widget/PenGestureView;->access$502(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 277
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    const/4 v6, 0x4

    #calls: Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V
    invoke-static {v5, v6}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;I)V

    .line 295
    .end local v0           #absDiffX:I
    .end local v1           #absDiffY:I
    .end local v2           #diffX:I
    .end local v3           #diffY:I
    :goto_0
    return v4

    .line 281
    .restart local v0       #absDiffX:I
    .restart local v1       #absDiffY:I
    .restart local v2       #diffX:I
    .restart local v3       #diffY:I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$400(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-nez v5, :cond_3

    if-ge v0, v7, :cond_3

    if-gez v3, :cond_3

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mHeightMovingSlop:I
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$900(Lcom/android/internal/widget/PenGestureView;)I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 282
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "PenGesture"

    const-string v6, "Detected \ufffd\ufffde"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v5, v4}, Lcom/android/internal/widget/PenGestureView;->access$402(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 284
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    const/16 v6, 0x52

    #calls: Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V
    invoke-static {v5, v6}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;I)V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToDown:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$300(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-nez v5, :cond_5

    if-ge v0, v7, :cond_5

    if-lez v3, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mHeightMovingSlop:I
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$900(Lcom/android/internal/widget/PenGestureView;)I

    move-result v5

    if-lt v1, v5, :cond_5

    .line 289
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "PenGesture"

    const-string v6, "Detected \ufffd\ufffde"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToDown:Z
    invoke-static {v5, v4}, Lcom/android/internal/widget/PenGestureView;->access$302(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 291
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v4, v4, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v5, v5, Lcom/android/internal/widget/PenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    .end local v0           #absDiffX:I
    .end local v1           #absDiffY:I
    .end local v2           #diffX:I
    .end local v3           #diffY:I
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 189
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PenGesture"

    const-string v1, "Pen LongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v1, v1, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/16 v8, 0x52

    const/16 v7, 0x64

    const/4 v4, 0x1

    .line 211
    if-eqz p1, :cond_9

    .line 212
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 213
    .local v2, diffX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v3, v5

    .line 214
    .local v3, diffY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 215
    .local v0, absDiffX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 217
    .local v1, absDiffY:I
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-virtual {v5}, Lcom/android/internal/widget/PenGestureView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 218
    if-ge v1, v7, :cond_1

    if-le v0, v1, :cond_1

    .line 219
    if-gez v2, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mWidthMovingSlop:I
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$600(Lcom/android/internal/widget/PenGestureView;)I

    move-result v5

    if-lt v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$200(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 220
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    const/4 v6, 0x4

    #calls: Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V
    invoke-static {v5, v6}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;I)V

    .line 221
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v5, v4}, Lcom/android/internal/widget/PenGestureView;->access$202(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 263
    .end local v0           #absDiffX:I
    .end local v1           #absDiffY:I
    .end local v2           #diffX:I
    .end local v3           #diffY:I
    :cond_0
    :goto_0
    return v4

    .line 223
    .restart local v0       #absDiffX:I
    .restart local v1       #absDiffY:I
    .restart local v2       #diffX:I
    .restart local v3       #diffY:I
    :cond_1
    if-ge v0, v7, :cond_0

    if-ge v0, v1, :cond_0

    .line 224
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mIsPhone:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$800(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    if-gez v3, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mHeightMovingSlop:I
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$900(Lcom/android/internal/widget/PenGestureView;)I

    move-result v5

    if-lt v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$200(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 226
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v5, v4}, Lcom/android/internal/widget/PenGestureView;->access$202(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 227
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #calls: Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V
    invoke-static {v5, v8}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;I)V

    goto :goto_0

    .line 230
    :cond_2
    if-lez v3, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mHeightMovingSlop:I
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$900(Lcom/android/internal/widget/PenGestureView;)I

    move-result v5

    if-lt v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$200(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 231
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v5, v4}, Lcom/android/internal/widget/PenGestureView;->access$202(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 232
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #calls: Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V
    invoke-static {v5, v8}, Lcom/android/internal/widget/PenGestureView;->access$700(Lcom/android/internal/widget/PenGestureView;I)V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mOutofHorizonThreshold:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$500(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 239
    if-ge v1, v7, :cond_4

    if-ltz v2, :cond_5

    .line 240
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mOutofHorizonThreshold:Z
    invoke-static {v5, v4}, Lcom/android/internal/widget/PenGestureView;->access$502(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 241
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "PenGesture"

    const-string v6, "onScroll() horizon - out of threshold!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_5
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$400(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 246
    if-ge v0, v7, :cond_6

    if-ltz v3, :cond_7

    .line 247
    :cond_6
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v5, v4}, Lcom/android/internal/widget/PenGestureView;->access$402(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 248
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "PenGesture"

    const-string v6, "onScroll() vertical Up - out of threshold!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_7
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToDown:Z
    invoke-static {v5}, Lcom/android/internal/widget/PenGestureView;->access$300(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 253
    if-ge v0, v7, :cond_8

    if-gtz v3, :cond_0

    .line 254
    :cond_8
    iget-object v5, p0, Lcom/android/internal/widget/PenGestureView$4;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mOutofVerticalThresholdToDown:Z
    invoke-static {v5, v4}, Lcom/android/internal/widget/PenGestureView;->access$302(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 255
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "PenGesture"

    const-string v6, "onScroll() vertical Down - out of threshold!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 261
    .end local v0           #absDiffX:I
    .end local v1           #absDiffY:I
    .end local v2           #diffX:I
    .end local v3           #diffY:I
    :cond_9
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "PenGesture"

    const-string v5, "There is no previous down event."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0
.end method
