.class Lcom/android/internal/policy/impl/GlanceView$1;
.super Ljava/lang/Object;
.source "GlanceView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlanceView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlanceView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlanceView;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 316
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView mAniEffectBackGround.onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mIsTimeClock:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$000(Lcom/android/internal/policy/impl/GlanceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mClockWidgetLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$100(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mClockWidgetLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$100(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlanceView;->mAniClock:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 321
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView mClockWidgetLayout.startAnimation(mAniClock)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mIsMissedCall:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$200(Lcom/android/internal/policy/impl/GlanceView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mMissedCallRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$300(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mMissedCallRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$300(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlanceView;->mAniContent:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 326
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView mMissedCallRelativeLayout.startAnimation(mAniContent)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mIsNewMessage:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$400(Lcom/android/internal/policy/impl/GlanceView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mNewMessageRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$500(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mNewMessageRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$500(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlanceView;->mAniContent:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 331
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView mNewMessageRelativeLayout.startAnimation(mAniClock)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mIsBatteryInform:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$600(Lcom/android/internal/policy/impl/GlanceView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mBatteryChargingRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$700(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mBatteryChargingRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$700(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlanceView;->mAniContent:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 336
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView mBatteryChargingRelativeLayout.startAnimation(mAniClock)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mIsNowMusic:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$800(Lcom/android/internal/policy/impl/GlanceView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mNowMusicRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$900(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    #getter for: Lcom/android/internal/policy/impl/GlanceView;->mNowMusicRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlanceView;->access$900(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView$1;->this$0:Lcom/android/internal/policy/impl/GlanceView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlanceView;->mAniContent:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 346
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView mNowMusicRelativeLayout.startAnimation(mAniClock)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_4
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 352
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 355
    return-void
.end method
