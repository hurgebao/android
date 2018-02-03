.class public Lorg/spongycastle/asn1/dvcs/DVCSRequestInformationBuilder;
.super Ljava/lang/Object;
.source "DVCSRequestInformationBuilder.java"


# instance fields
.field private final service:Lorg/spongycastle/asn1/dvcs/ServiceType;

.field private version:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/ServiceType;)V
    .locals 1
    .param p1, "service"    # Lorg/spongycastle/asn1/dvcs/ServiceType;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformationBuilder;->version:I

    .line 55
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformationBuilder;->service:Lorg/spongycastle/asn1/dvcs/ServiceType;

    .line 56
    return-void
.end method
