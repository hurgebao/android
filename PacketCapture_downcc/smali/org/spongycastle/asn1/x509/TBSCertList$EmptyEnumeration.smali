.class Lorg/spongycastle/asn1/x509/TBSCertList$EmptyEnumeration;
.super Ljava/lang/Object;
.source "TBSCertList.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyEnumeration"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/asn1/x509/TBSCertList;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/x509/TBSCertList;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/TBSCertList$EmptyEnumeration;->this$0:Lorg/spongycastle/asn1/x509/TBSCertList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/asn1/x509/TBSCertList;Lorg/spongycastle/asn1/x509/TBSCertList$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/asn1/x509/TBSCertList;
    .param p2, "x1"    # Lorg/spongycastle/asn1/x509/TBSCertList$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lorg/spongycastle/asn1/x509/TBSCertList;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method
