// import ClientError from './client-error';

// export default function ErrorMiddleware(err, req, res, next) {
//   if (err instanceof ClientError) {
//     res.status(err.status).json({
//       error: err.message
//     });
//   } else {
//     console.error(err);
//     res.status(500).json({
//       error: 'an unexpected error occurred'
//     });
//   }
// }
