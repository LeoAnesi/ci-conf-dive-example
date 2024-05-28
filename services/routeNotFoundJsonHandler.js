export const routeNotFoundJsonHandler = function (req, res) {
  res.status(404).json({ message: `Cannot ${req.method} ${req.path}` });
};
