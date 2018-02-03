.class Lui/home/AppsListActivity$3;
.super Ljava/lang/Object;
.source "AppsListActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/home/AppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer",
        "<",
        "Landroid/support/v4/util/Pair",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lui/home/AppsListActivity;


# direct methods
.method constructor <init>(Lui/home/AppsListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lui/home/AppsListActivity;

    .prologue
    .line 113
    iput-object p1, p0, Lui/home/AppsListActivity$3;->this$0:Lui/home/AppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/support/v4/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "listListPair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    iget-object v0, p0, Lui/home/AppsListActivity$3;->this$0:Lui/home/AppsListActivity;

    iget-object v2, v0, Lui/home/AppsListActivity;->adapter:Lui/home/AppsListActivity$AppsAdapter;

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v0, v1}, Lui/home/AppsListActivity$AppsAdapter;->setData(Ljava/util/List;Ljava/util/List;)V

    .line 117
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Landroid/support/v4/util/Pair;

    invoke-virtual {p0, p1}, Lui/home/AppsListActivity$3;->onChanged(Landroid/support/v4/util/Pair;)V

    return-void
.end method
