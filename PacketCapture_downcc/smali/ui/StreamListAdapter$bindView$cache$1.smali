.class public final Lui/StreamListAdapter$bindView$cache$1;
.super Ljava/lang/Object;
.source "StreamListFragment.kt"

# interfaces
.implements Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/StreamListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $tag:Lui/StreamListAdapter$Tag;


# direct methods
.method constructor <init>(Lui/StreamListAdapter$Tag;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lui/StreamListAdapter$Tag;

    .prologue
    .line 173
    iput-object p1, p0, Lui/StreamListAdapter$bindView$cache$1;->$tag:Lui/StreamListAdapter$Tag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lui/StreamListAdapter$bindView$cache$1;->$tag:Lui/StreamListAdapter$Tag;

    invoke-virtual {v0}, Lui/StreamListAdapter$Tag;->getViewIp()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lui/StreamListAdapter$bindView$cache$1;->$tag:Lui/StreamListAdapter$Tag;

    invoke-virtual {v0}, Lui/StreamListAdapter$Tag;->getViewHostName()Landroid/widget/TextView;

    move-result-object v0

    check-cast p2, Ljava/lang/CharSequence;

    .end local p2    # "name":Ljava/lang/String;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_0
    return-void
.end method
