.class Landroid/widget/ScrollView$1;
.super Landroid/os/Handler;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x4

    const v11, 0x3ecccccd

    const/4 v10, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    .local v1, offset:I
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #calls: Landroid/widget/ScrollView;->getScrollRange()I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$000(Landroid/widget/ScrollView;)I

    move-result v3

    .local v3, range:I
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    #setter for: Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$102(Landroid/widget/ScrollView;I)I

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)I

    move-result v6

    iget-object v7, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionStartTime:I
    invoke-static {v7}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v7

    sub-int/2addr v6, v7

    #setter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$202(Landroid/widget/ScrollView;I)I

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v5

    if-le v5, v10, :cond_1

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v5

    if-ge v5, v12, :cond_1

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED_STEP_2:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$500(Landroid/widget/ScrollView;)I

    move-result v6

    #setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$402(Landroid/widget/ScrollView;I)I

    :goto_1
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v5

    if-ne v5, v10, :cond_4

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$400(Landroid/widget/ScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, -0x1

    :goto_2
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    if-gez v1, :cond_5

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1000(Landroid/widget/ScrollView;)I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5, v0, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1100(Landroid/widget/ScrollView;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x5

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v5

    if-lt v5, v12, :cond_2

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED_STEP_3:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$600(Landroid/widget/ScrollView;)I

    move-result v6

    #setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$402(Landroid/widget/ScrollView;I)I

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED_STEP_4:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$700(Landroid/widget/ScrollView;)I

    move-result v6

    #setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$402(Landroid/widget/ScrollView;I)I

    goto :goto_1

    :cond_3
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED_STEP_1:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    #setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$402(Landroid/widget/ScrollView;I)I

    goto :goto_1

    :cond_4
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$400(Landroid/widget/ScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, 0x1

    goto :goto_2

    :cond_5
    if-lez v1, :cond_6

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1200(Landroid/widget/ScrollView;)I

    move-result v5

    if-ge v5, v3, :cond_6

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5, v0, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1100(Landroid/widget/ScrollView;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x5

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v2

    .local v2, overscrollMode:I
    if-eqz v2, :cond_7

    if-ne v2, v4, :cond_8

    if-lez v3, :cond_8

    :cond_7
    move v0, v4

    .local v0, canOverscroll:Z
    :cond_8
    if-eqz v0, :cond_0

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1300(Landroid/widget/ScrollView;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v5

    if-ne v5, v10, :cond_c

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1400(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_9
    :goto_3
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1400(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1400(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->invalidate()V

    :cond_b
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #setter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Landroid/widget/ScrollView;->access$1302(Landroid/widget/ScrollView;Z)Z

    goto/16 :goto_0

    :cond_c
    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v5

    if-ne v5, v4, :cond_9

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1400(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1400(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
