.class final Lui/storeimport/StoreLoadActivity$onCreate$1;
.super Ljava/lang/Object;
.source "StoreLoadActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/storeimport/StoreLoadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/storeimport/StoreLoadActivity;


# direct methods
.method constructor <init>(Lui/storeimport/StoreLoadActivity;)V
    .locals 0

    iput-object p1, p0, Lui/storeimport/StoreLoadActivity$onCreate$1;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lui/storeimport/StoreLoadActivity$onCreate$1;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v0}, Lui/storeimport/StoreLoadActivity;->finish()V

    return-void
.end method
