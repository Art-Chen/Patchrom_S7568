.class Landroid/widget/AbsListView$5;
.super Landroid/os/Handler;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 7822
    iput-object p1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x4

    const v10, 0x3ecccccd

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 7830
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 7947
    :cond_0
    :goto_0
    return-void

    .line 7878
    :pswitch_0
    const/4 v1, 0x0

    .line 7880
    .local v1, offset:I
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    #setter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$5602(Landroid/widget/AbsListView;I)I

    .line 7881
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionStartTime:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;)I

    move-result v6

    sub-int/2addr v5, v6

    #setter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$5702(Landroid/widget/AbsListView;I)I

    .line 7883
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)I

    move-result v4

    if-le v4, v9, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)I

    move-result v4

    if-ge v4, v11, :cond_2

    .line 7884
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED_STEP_2:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$6000(Landroid/widget/AbsListView;)I

    move-result v5

    #setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$5902(Landroid/widget/AbsListView;I)I

    .line 7892
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 7893
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5900(Landroid/widget/AbsListView;)I

    move-result v4

    mul-int/lit8 v1, v4, -0x1

    .line 7898
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7902
    if-gez v1, :cond_6

    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 7905
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v1, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 7906
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$6500(Landroid/widget/AbsListView;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 7885
    :cond_2
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)I

    move-result v4

    if-lt v4, v11, :cond_3

    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    .line 7886
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED_STEP_3:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$6100(Landroid/widget/AbsListView;)I

    move-result v5

    #setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$5902(Landroid/widget/AbsListView;I)I

    goto :goto_1

    .line 7887
    :cond_3
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    .line 7888
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED_STEP_4:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$6200(Landroid/widget/AbsListView;)I

    move-result v5

    #setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$5902(Landroid/widget/AbsListView;I)I

    goto :goto_1

    .line 7890
    :cond_4
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED_STEP_1:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$6300(Landroid/widget/AbsListView;)I

    move-result v5

    #setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$5902(Landroid/widget/AbsListView;I)I

    goto/16 :goto_1

    .line 7895
    :cond_5
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5900(Landroid/widget/AbsListView;)I

    move-result v4

    mul-int/lit8 v1, v4, 0x1

    goto/16 :goto_2

    .line 7908
    :cond_6
    if-lez v1, :cond_8

    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 7912
    :cond_7
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v1, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 7913
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$6500(Landroid/widget/AbsListView;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 7916
    :cond_8
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v2

    .line 7917
    .local v2, overscrollMode:I
    if-eqz v2, :cond_9

    if-ne v2, v3, :cond_a

    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    move v0, v3

    .line 7920
    .local v0, canOverscroll:Z
    :cond_a
    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4}, Landroid/widget/AbsListView;->access$6600(Landroid/widget/AbsListView;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7921
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)I

    move-result v4

    if-ne v4, v9, :cond_e

    .line 7922
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 7923
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_b

    .line 7924
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 7933
    :cond_b
    :goto_3
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_d

    .line 7935
    :cond_c
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->invalidate()V

    .line 7938
    :cond_d
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #setter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4, v3}, Landroid/widget/AbsListView;->access$6602(Landroid/widget/AbsListView;Z)Z

    goto/16 :goto_0

    .line 7926
    :cond_e
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)I

    move-result v4

    if-ne v4, v3, :cond_b

    .line 7927
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 7928
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_b

    .line 7929
    iget-object v4, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    .line 7830
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
