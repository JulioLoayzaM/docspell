package docspell.restserver.routes

import cats.effect._
import cats.implicits._
import org.http4s._
import org.http4s.dsl.Http4sDsl
import org.http4s.circe.CirceEntityEncoder._
import org.http4s.circe.CirceEntityDecoder._
import com.github.eikek.calev.CalEvent

import docspell.common._
import docspell.restapi.model._

object CalEventCheckRoutes {

  def apply[F[_]: Effect](): HttpRoutes[F] = {
    val dsl = new Http4sDsl[F] {}
    import dsl._

    HttpRoutes.of {
      case req @ POST -> Root =>
        for {
          data <- req.as[CalEventCheck]
          res  <- testEvent(data.event)
          resp <- Ok(res)
        } yield resp
    }
  }

  def testEvent[F[_]: Sync](str: String): F[CalEventCheckResult] =
    Timestamp.current[F].map { now =>
      CalEvent.parse(str) match {
        case Right(ev) =>
          val next = ev.nextElapse(now.toUtcDateTime).map(Timestamp.atUtc)
          CalEventCheckResult(true, "Valid.", ev.some, next)
        case Left(err) =>
          CalEventCheckResult(false, err, None, None)
      }
    }
}
