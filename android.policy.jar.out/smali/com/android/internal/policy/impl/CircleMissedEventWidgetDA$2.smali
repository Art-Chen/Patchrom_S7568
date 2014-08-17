.class Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;
.super Ljava/lang/Object;
.source "CircleMissedEventWidgetDA.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 256
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    #setter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$1002(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;)Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    .line 289
    const-string v0, "MissedEvent"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$1200(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$1100(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$1200(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mIsLiveWallpaper:Z

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$100(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x1080425

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108044c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$400(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$500(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$600(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$700(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x1080421

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108044a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$800(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)I

    move-result v0

    if-lez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$400(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$500(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$900(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$600(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$700(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
