.class Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;
.super Ljava/lang/Object;
.source "CircleMissedEventWidget.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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
    .line 191
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$600(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108044b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$700(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedCallList;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/CircleMissedCallList;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 202
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108044a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$700(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedCallList;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/CircleMissedCallList;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 206
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$700(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedCallList;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/CircleMissedCallList;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
