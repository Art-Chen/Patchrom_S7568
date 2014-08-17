.class Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;
.super Ljava/lang/Object;
.source "CircleMissedEventWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 160
    const-string v0, "CircleMissedEventWidget"

    const-string v1, "onTouchEvent() in MissedEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$500(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$400(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 182
    const-string v0, "MissedEvent"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$500(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 167
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsgBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$100(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x1080425

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108044c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x1080451

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsgBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$100(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x1080421

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108044a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108044f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
